//
//  RegisterView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//
// An issue to fix:
// screen moving further down each time I click "Create account" and "Log in for both screens

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel ()
    
    var body: some View {
        NavigationView {
            VStack {
                HeaderView()
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Your Name", text: $viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Button(action:  {
                        // Attempt login button
                        viewModel.register() // cals login function located in viewModel file
                    })  {

                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(Color.purple)
                            
                            Text("Create Account")
                                .foregroundColor(Color.white)
                                .bold()
                            
                        }
                    }
                }
                .padding()
                VStack {
                    NavigationLink(destination: LogInView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.teal)
                                .frame(height: 50) // Adjust height as needed
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                        .padding([.horizontal], 50)
                    }
                   
                    Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 100)
                            .padding(.top, 0)

                        Spacer()
                }
                .padding()
                
            }
                
                
                Spacer() // to move up
                
            }
        }
    }
    
    
    #Preview {
        RegisterView()
    }
    
