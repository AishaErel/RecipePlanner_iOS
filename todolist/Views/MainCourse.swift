//
//  MainCourse.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 9/5/24.
//

import SwiftUI

struct MainCourse: View {
    @State private var isExpanded1 = false
    @State private var isExpanded2 = false
    @State private var isExpanded3 = false
    
    
    var body: some View {
        NavigationView {
            VStack { //vertical page view
                Form {
                    Text("Main Course")
                    
                        .bold()
                        .font(.system(size : 35))
                        .foregroundColor(Color.black)
                        .padding(.top)
                    
                    // Main course 1
                    
                    DisclosureGroup(isExpanded: $isExpanded1) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespon of tomato paste")
                            Text("• 1/2 pound ground beef")
                            Text("• 1/2 onion")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1/2 box of Pasta")
                            Text("• Salt, red and black pepper")
                            Text("• 6 cups of boiled water")
                            
                           
                            Text("Instructions:")
                                .font(.headline)
                            Text("1. Get a pot, add boiled water and pasta in, add some salt, let pasta cook for 12 minutes.")
                            Text("Get a pan, put the onion and garlic inside with 3 tablespoon of olive oil, let onions caramalize a bit then add your ground beef and let them cook together for 10 minutes, then add tomato paste, cook for another 4-5 minutes, sauce is ready")
                            Text(" Add the sauce into pasta, stir well, ready to serve, Enjoy! ")
                           

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("1: Ground Beef Pasta")
                            Spacer()
                            Image(systemName: isExpanded1 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Main Course 2
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespon of tomato paste")
                            Text("• 2 potatoes")
                            Text("• 1/2 pound beef or ground beef")
                            Text("• 1/2 onion")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1/2 box of Pasta")
                            Text("• Salt, red and black pepper")
                            Text("• 3 cups of boiled water")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                           
                            Text("Get a pot, put the meat inside, add 2 tablespoon of olive oil, let it cook for 15 minutes")
                            Text("Add the onion and garlic inside with 1 tablespoon of olive oil, and tomoto paste, let them cook for another 5-8 minutes while you stir well")
                            Text(" Add the diced potatoes, and 3 cups of boiled water, close the lid,it will be ready to serve in 15-20 minutes, Enjoy! ")
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("2: Meat w Potato      ")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Main Course 3
                    DisclosureGroup(isExpanded: $isExpanded3) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 1 diced tomato")
                            Text("• 1/2 onion")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1 tablespoon of tomato paste")
                            Text("• 3 cups of boiled water")
                            Text("• Salt, red and black pepper ")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a pot, put the onion and garlic inside with 3 tablespoon of olive oil, let onions caramalize a bit then add your tomato paste, cook for 3 minutes")
                            Text("Then add the diced tomato and let them cook together for 4 minutes, then add your green beans, add your spices, stir well for another minute")
                            Text("Add 3 cups of boiled water, close the lid, it is ready to serve in 20-25 minutes, it is suggested to serve with a rice, Enjoy!")
                            
                            
                            
                            
                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("3: Green Beans          Vegan")
                            
                            Spacer()
                            Image(systemName: isExpanded3 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                            
                            
                        }
                        
                       
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Main Course 4
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 3 tablespoon of olive oil")
                            Text("• 1 tablespon of tomato paste")
                            Text("• 2 Zucchinis")
                            Text("• 1/2 onion")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1/2 box of Pasta")
                            Text("• Salt, red and black pepper")
                            Text("• 6 cups of boiled water")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("1. Get a pot, add boiled water and pasta in, add some salt, let pasta cook for 12 minutes.")
                            Text("Get a pan, put the onion and garlic inside with 3 tablespoon of olive oil, let onions caramalize a bit then add your sliced zucchinis and let them cook together for 10 minutes, then add tomato paste, cook for another 4-5 minutes, sauce is ready")
                            Text(" Add the sauce into pasta, stir well, ready to serve, Enjoy! ")
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("4: Zucchini Pasta       Vegan")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Main Course 4
                    DisclosureGroup(isExpanded: $isExpanded3) {
                        VStack(alignment: .leading) {
                            Text("4 people Ingredients:")
                                .font(.headline)
                            Text("• 1 diced tomato")
                            Text("• 1/2 onion")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1 tablespoon of tomato paste")
                            Text("• 3 cups of boiled water")
                            Text("• Salt, red and black pepper ")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a pot, put the onion and garlic inside with 3 tablespoon of olive oil, let onions caramalize a bit then add your tomato paste, cook for 3 minutes")
                            Text("Then add the diced tomato and let them cook together for 4 minutes, then add your green beans, add your spices, stir well for another minute")
                            Text("Add 3 cups of boiled water, close the lid, it is ready to serve in 20-25 minutes, it is suggested to serve with a rice, Enjoy!")
                            
                            
                            
                            
                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("5: Green Beans          Vegan")
                            
                            Spacer()
                            Image(systemName: isExpanded3 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                            
                            
                        }
                        
                       
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                    // Main Course 4
                    DisclosureGroup(isExpanded: $isExpanded2) {
                        VStack(alignment: .leading) {
                            Text("3 people Ingredients:")
                                .font(.headline)
                            Text("• 1 diced pepper")
                            Text("• 1/2 onion")
                            Text("• 1 cup of chickpeas")
                            Text("• 1 tablespoon of garlic")
                            Text("• 1 tablespoon of tomato paste")
                            Text("• 3 cups of boiled water")
                            Text("• Salt, red and black pepper ")
                            
                            
                            Text("Instructions:")
                                .font(.headline)
                            Text("Get a pot, put the onion and garlic inside with 3 tablespoon of olive oil, let onions caramalize a bit then add your tomato paste, cook for 3 minutes")
                            Text("Then add the diced pepper and let them cook together for 5 minutes, then add your chickpeas, add your spices, stir well for another minute")
                            Text("Add 3 cups of boiled water, close the lid, it is ready to serve in 15-20 minutes, it is suggested to serve with a rice, Enjoy!")
                            
                            

                        }
                        .padding()
                    } label: {
                        HStack {
                            Text("6:Chickpea w Rice    Vegan")
                            Spacer()
                            Image(systemName: isExpanded2 ? "chevron.down" : "chevron.right")
                                .foregroundColor(.purple)
                        }
                        .padding()
                        
                    }
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding()
                    
                }
                
               
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
    MainCourse()
}
