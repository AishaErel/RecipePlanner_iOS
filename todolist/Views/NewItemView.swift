//
//  NewItemView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.


import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("New Recipe")
                    .font(.system(size: 32))
                    .bold()
                    .padding()
                Form {
                    // Title
                    TextField("Recipe Title", text: $viewModel.title)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    //Due Date
                    
                    DatePicker("Select Date", selection: $viewModel.dueDate)
                        .datePickerStyle(GraphicalDatePickerStyle())
                    
                    //Button
                    TLButton (
                        title: "Save",
                        background:.pink
                    ){
                        if viewModel.canSave {
                            print("Saved")
                            viewModel.save()
                            newItemPresented = false
                        } else {
                            viewModel.showAlert = true
                        }
                    }
                    .padding()
                }
                Button(action:  {
                    // Attempt login button
                    /* viewModel.login()*/ // cals login function located in viewModel file
                })  {
                    
                    VStack {
                        NavigationLink(destination: RecipeIdeas()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.teal)
                                    .frame(height: 50) // Adjust height as needed
                                
                                Text("Click to Refer Recipe Ideas")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                            .padding([.horizontal], 50) // Adjust horizontal padding as needed
                        }
                        .padding(.bottom, 50) // Adjust top padding as needed
                    }
                    .padding() // Add padding to the VStack
                }
                
                .alert(isPresented: $viewModel.showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text("Please make sure to fill in all fields and select due date that is today or newer."))
                }
            }
        }
    }
}

   
    
#Preview {
    NewItemView(newItemPresented: Binding(get : {
        return true
        
    }, set: { _ in
        
    }))
}

