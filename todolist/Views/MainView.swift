//
//  ContentView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import SwiftUI

struct MainView: View {
    // check if the user is already signed in
    @StateObject var viewModel = MainViewViewModel()
    
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in user
            TabView {
                ToDoListView(userId: viewModel.currentUserId)
                    .tabItem {
                        Label("Home", systemImage: "house") //home tab below the screen
                            
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle" )
                        //profile tab below the screen
                            
                    }
                AboutUs()
                    .tabItem {
                        Label("About us", systemImage: "book" )
                        //profile tab below the screen
                            
                    }
                
            }
        
           
         
            
        } else {
            //        NavigationView {
            LogInView()
        }
    }
}

#Preview {
    MainView()
}
