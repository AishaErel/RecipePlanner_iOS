//
//  SoupsView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/5/24.
//

import SwiftUI

struct SoupsView: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    
    
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Form {
                    Text("Soup Recipes")
                    
                        .bold()
                        .font(.system(size : 35))
                        .foregroundColor(Color.black)
                        .padding(.top)
                    
                    // Soup 1
                    
                    DisclosureGroup(isExpanded: $isExpanded1) {
                        VStack(alignment: .leading) {
                            Text("4-6 people Ingredients:")
                                .font(.headline)
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespon of tomato paste")
                            Text("• pre-washed 1 cup of lentil")
                            Text("• 1/2 onion")
                            Text("• 1 carrot (cut into 4-5 pieces")
                            Text("• 1 potato (cut into big pieces")
                            Text("• Salt, red and black pepper")
                            Text("• 6 cups of boiled water")
                            
                           
                            Text("Instructions:")
                                .font(.headline)
                            Text(" Add the onion inside a pot with 3 tablespoon of olive oil, let onions caramalize a bit, then add tomato paste, let them cook for another 4-5 minutes ")
                            Text("Add both potato and carrot, and let them cook for 3 mins while you mix")
                            Text(" Add salt, pepper and any spice you'd like, add the lentils and 6 cups of boiled water")
                            Text(" Add 1 cup of lentils, salt, pepper and any spice you'd like,and 6 cups of boiled water, then close the lid")
                            Text("After 40 minutes, use a blender to make soup smooth, ready to serve, Enjoy!")

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("1: Lentil Soup             Vegan")
                            Spacer()
                            Image(systemName: isExpanded1 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Soup 2
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("4-6 people Ingredients:")
                                .font(.headline)
                            Text("• 5 tablespon of pre-washed red lentil")
                            Text("• 5 tablespoon of pre-washed orzo")
                            Text("• 1 tablespon of tomato paste")
                            Text("• 1/2 onion")
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespoon of garlic")
                            Text("• 6 cups of boiled water")
                            Text("• Salt, dried- mint, red/black pepper")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Add the onions and garlic inside a pot with 3 tablespoon of olive oil, let onions caramalize a bit, then add tomato paste, cook for another 4-5 minutes")
                            Text("Add lentils, salt, pepper and any spice you'd like,  and 6 cups of boiled water, close the lid")
                            Text("After 35 minutes, use a blender to make soup smooth, then add orzo and let them cook for 8 minutes, ready to serve, Enjoy!")
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("2: Ezo Soup               Vegan")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Soup 3
                    DisclosureGroup(isExpanded: $isExpanded3) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 5 tomatoes")
                            Text("• 2 tablespoon of butter")
                            Text("• 1 tablespoon of tomato paste")
                            Text("• 3 cups of flour")
                            Text("• 4 cups of boiled water")
                            Text("• 2 tablespoon of gratered cheese")
                            Text("• Salt, red and black pepper ")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text(" Put your diced tomatoes in pan, add 1 tablespoon of butter, garlic and let them cook for 10 minutes")
                            Text("Put your tomatoes in blender to make them smooth, then put back into the pot")
                            Text("Get a pan, put 1 tablespoon of butter in a pan, add your flour and tomato paste and let them cook 3-4 minutes while you stir very well")
                            Text("Put your pan sauce in tomato pot, add salt, black, red pepper and your boiled water, close the lid, let them cook for 20 more minutes, ready to serve, serve with gratered cheese on top, Enjoy! ")
                            
                            
                            
                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("Soup 3: Tomato Soup")
                            
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
    SoupsView()
}
