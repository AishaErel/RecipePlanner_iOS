//
//  ProfileView.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    // Avatar
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.purple)
                        .frame(width: 125, height: 125)
                        .padding()
                    
                    
                    // Info: name, Email, member since
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }
                        .padding()
                        HStack {
                            Text("Email")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack {
                            Text("Member Since: ")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                    }
                    .padding()
                    
                    //Sign out
                    Button("Log Out") {
                        viewModel.logOut()
                    }
                    .tint(.purple)
                    .padding()
                    
                    Spacer()
                    
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
            .padding()
            
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}


#Preview {
    ProfileView()
}
