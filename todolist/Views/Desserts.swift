//
//  SoupsView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/5/24.
//

import SwiftUI

struct Desserts: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    
    
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Form {
                    Text("Desserts")
                    
                        .bold()
                        .font(.system(size : 35))
                        .foregroundColor(Color.black)
                        .padding(.top)
                    
                    // Dessert 1
                    
                    DisclosureGroup(isExpanded: $isExpanded1) {
                        VStack(alignment: .leading) {
                            Text("2 people Ingredients:")
                                .font(.headline)
                            Text("• 2 tablespoon of chocolate ice cream")
                            Text("• 2 tablespoon choice of chocolate cream")
                            Text("• 2 cups choice of milk")
                            
                           
                            Text("Instructions:")
                                .font(.headline)
                            Text("Put all of your ingredients inside a blender, mix it really well for 30-45 seconds, your drink is ready to serve,  add some ice cubes inside befor eyou serve, Enjoy!")

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("1: Chocolate Heaven   ")
                            Spacer()
                            Image(systemName: isExpanded1 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Desserts 2
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 1 packet biscuits")
                            Text("• 3 tablespoon of cocoa powder")
                            Text("• 1/2 cup of milk")
                            Text("• A handful of walnuts")
                            Text("• Coconut flakes (optional)")
                            Text("• 1/2 cup of Melted chocolate chips")

                           
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a large cup, add the biscuits, milk, cocoa powder together and mix it really well ")
                            Text("Add wallnuts,and shape them into little balls, then dip them into a sauce, and sprinkle coconut flakes on top, ready to serve, Enjoy!")
                            
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("2: Cocoa Balls        ")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Desserts 3
                    DisclosureGroup(isExpanded: $isExpanded3) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 2 grated carrot")
                            Text("• 3 tablespoon of cocoa powder")
                            Text("• 1/2 cup of sugar (or sweetener of choice)")
                            Text("• 1/2 packet of biscuits")
                            Text("• 2 tablespoon of olive oil")

                         
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a pan, add your grated carrot and olive oil, saute them together for 5-8 minutes")
                            Text("Take the pan off the heat and let it cool aside, after its cooled, add your biscuits, sugar and cocoa powder, mix them really well until combined")
                            Text("Add wallnuts,and shape them into little balls, then dip them into a sauce, and sprinkle coconut flakes on top, ready to serve, Enjoy!")
                            
                            
                            
                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("3: Carrot Balls")
                            
                            Spacer()
                            Image(systemName: isExpanded3 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                            
                            
                        }
                        
                       
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                }
                Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.top, 20)

                    Spacer()
                
               
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
    Desserts()
}

