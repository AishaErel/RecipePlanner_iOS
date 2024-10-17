//
//  LogInViewViewModel.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import Foundation
import FirebaseAuth

class LogInViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    
    init() {}
    
    func login() {
        guard validate () else {
            return
        }
        // try login if validates
        Auth.auth().signIn(withEmail: email, password: password)
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {

            errorMessage = "Please fill in all fields"
            
            return false
        }
        guard email.contains("@") && email.contains(".") else {
               errorMessage = "Please enter a valid email address"
               return false
           }
               return true
       }
    
}












