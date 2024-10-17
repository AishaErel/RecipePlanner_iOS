//
//  RegisterViewViewModel.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    func register() {
        guard validate() else {
            return
        }
        // actually register the user
        Auth.auth().createUser(withEmail: email, password: password) {  [weak self] result, error in
           
            guard let userId = result?.user.uid else { //receive the userID
                return
            }
            self?.insertUserRecord(id: userId)
        }
}
    private func insertUserRecord(id: String) {  //this function will useuserId as input
        let newUser = User(id:id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    private func validate()-> Bool {
        errorMessage = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all the fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please write a valid email address"
            return false
        }
        guard password.count >= 6 else {
            errorMessage = "Please write a more secured password"
            return false
        }
        return true
        }
    }

