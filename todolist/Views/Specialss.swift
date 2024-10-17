//
//  SoupsView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/5/24.
//

import SwiftUI

struct Specialss: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    
    
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Form {
                    Text("Specialss")
                    
                        .bold()
                        .font(.system(size : 35))
                        .foregroundColor(Color.black)
                        .padding(.top)
                    
                    // Speacial 1
                    
                    DisclosureGroup(isExpanded: $isExpanded1) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 1/2 pound ground beef")
                            Text("• 1 egg")
                            Text("• 1 well toasted bread")
                            Text("• 1 well diced onion (you can also blend it")
                            Text("• Salt, red and black pepper")
                            
                            
                           
                            Text("Instructions:")
                                .font(.headline)
                            Text(" Make sure to wash your hands really well")
                            Text("Put your bread into blender, or make sure to cut into really small pieces")
                            Text("Get a large cup, put your raw ground beef, egg, onion, bread, salt, pepper and start to mix them really well for 5-10 minutes (you can get a help of kitchen aid, if not you can use your hands ")
                            Text(" Give a shape of round circles with your hand and start to put them into oven tray, based on the sizes of your meats, you may get 10-20 kofte pieces ")
                            Text("Get a regular drinking cup, add tomato paste, salt, pepper, garlic powder and add boiled water to mix it really well, then pour this sauce top of your meats")
                            Text("Bake them in oven in 420 Fahreinheit for 20-25 minutes, you can fry some potatoes while you wait :) Enjoy!")


                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("1: Kofte Meat           ")
                            Spacer()
                            Image(systemName: isExpanded1 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Special 2
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 1/2 packet of spinach")
                            Text("• 2 diced potatoes")
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1 cup of milk")
                            Text("• 2 tablespoon of flour")
                            Text("• Salt, red/black pepper")
                            Text("• 2 tablespoon of gratered cheese")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Add the potatoes and garlic inside a pot with 3 tablespoon of olive oil, let them cook for 5 minutes, then add spinach, stir well for another 2 minutes")
                            Text("Then add your flour, stir well, add 1 cup of milk while you still stir")
                            Text("Add any spice you'd like, then transfer everything into an oven tray/cup, add your gratered cheese on top ")
                            Text("Bake for 15-20 minutes in 350 Fahreinheit, ready to serve, Enjoy!")
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("2: Potato Spinach      Vegan")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Special 3
                    DisclosureGroup(isExpanded: $isExpanded3) {
                        VStack(alignment: .leading) {
                            Text("3 people Ingredients: Suggested for Breakfast")
                                .font(.headline)
                            Text("• 1 tomato")
                            Text("• 2 eggs")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1 bell pepper/4-5 small peppers")
                            Text("• 1 tablespoon of butter")
                            Text("• 1 tablespoon of gratered cheese")
                            Text("• Salt, pepper, any spice you'd like")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a pan, put the peppers and garlic inside with 3 tablespoon of olive oil, let them cook for 10 minutes while you stir once in a while")
                            Text("Put your tomatoes in, stir well, add your spices, let them cook for another 6 minutes")
                            Text("Crack your eggs inside a pan,make sure to stir very well and cook at the same time for the next 4-5 minutes ")
                            Text("Add your gratered cheese on top, it is suggested to serve with toasted bread and cream cheese, Enjoy!")
                            
                            
                            
                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("3: Menemen         Breakfast")
                            
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
    Specialss()
}

