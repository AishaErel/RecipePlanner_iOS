//
//  AboutUs.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/9/24.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Text("About Us")
                    .bold()
                    .font(.system(size : 35))
                    .foregroundColor(Color.black)
                    .padding(.top)
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.teal)
                        .frame(height: 230) // Adjust height as needed
                    
                    Text("I am a senior student at UCD, who studies Computer Science. As a college student myself, I know that we are generally too busy to cook great meals. However, I really value the importance of eating well, that’s why I wanted to design this app for students who want to cook healthy and easy to make foods which were influenced by my cultural background. Enjoy!")
                        .foregroundColor(.white)
                        .font(.system(size: 19))
                        .multilineTextAlignment(.center)
                        
                    
    
                }
               
                
                Spacer()
                Image("profile_photo")
                    .resizable()
               // Pushes content upwards
                
                //Recipe Form
                Button(action:  {
                    //
                })  {
                    
                    NavigationLink(destination: MainView()) {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.teal)
                                .frame(height: 50) // Adjust height as needed
                                .padding()
                            Text("Go to your Recipe Planner")
                                .foregroundColor(.white)
                                .bold()
                                .padding()
                        }
                        
                    }
                    
                }
                .padding()
                .padding(.bottom)
                Spacer()
                
            }
            
        }
        
    }
}
#Preview {
    AboutUs()
}
