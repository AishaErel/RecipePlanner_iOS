//
//  RecipeIdeas.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/5/24.
//

import SwiftUI

struct RecipeIdeas: View {
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Text("Recipe Ideas")
                    .bold()
                    .font(.system(size : 35))
                    .foregroundColor(Color.black)
                    .padding(.top)
                
                Spacer() // Pushes content upwards
                
                //Recipe Form
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: SoupsView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.purple)
                                .frame(height: 50) // Adjust height as needed
                            
                            Text("Soup Recipes")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                        
                    }
                }
                .padding(.horizontal)
                
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: MainCourse()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.purple)
                                .frame(height: 50) // Adjust height as needed
                            
                            Text("Main Course")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                        
                    }
                }
                .padding(.horizontal)
                
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: Specialss()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.purple)
                                .frame(height: 50) // Adjust height as needed
                            
                            Text("Specialss!")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                        
                    }
                }
                .padding(.horizontal)
                
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: Desserts()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.purple)
                                .frame(height: 50) // Adjust height as needed
                            
                            Text("Desserts")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                        
                    }
                }
                .padding(.horizontal)
                
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: MainView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.teal)
                                .frame(height: 50) // Adjust height as needed
                            
                            
                            Text("Go to your Recipe Planner")
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                        }
                        
                        .padding()
                    }
                    .padding()
                }
                .padding()
                .padding(.bottom)
                Spacer()
            }
        }
    }
}





#Preview {
    RecipeIdeas()
}
