//
//  LogInView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewModel = LogInViewViewModel() //import LogInViewViewModel to use
    
    var body: some View {
        NavigationView {
           
            VStack { //vertical page view
                //Header
                VStack {
                    
                    HeaderView() //basically calls HeaderView file
                    
                }
                //Login form itself
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)//we use textfield because it allows user to fill in
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    Button(action:  {
                        // Attempt login button
                        viewModel.login() // cals login function located in viewModel file
                    })  {
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .foregroundColor(Color.purple)
                            
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                            
                        }
                    }
                }
            
                    .padding()
                    VStack {
                        NavigationLink(destination: RegisterView()) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color.teal)
                                    .frame(height: 50) // Adjust height as needed
                                
                                Text("Create an Account")
                                    .foregroundColor(.white)
                                    .bold()
                                
                                
                            }
                            .padding([.horizontal], 50) // Adjust horizontal padding as needed
                        }
                        .padding(.bottom, 20) // Adjust top padding as needed
                        Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 100) 
                                .padding(.top, 20)

                            Spacer()
                    }
                    .padding()
                    
                }
                
                
                // Create Account
                
                Spacer() // to move up
                
            }
        }
    }


    
    #Preview {
        LogInView()
    }

