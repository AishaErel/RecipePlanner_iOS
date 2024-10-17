//
//  NewItemViewViewModel.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    func save() {
        guard canSave else {
            return
        }
        // get user id
        guard let uId = Auth.auth().currentUser?.uid else {
            return

        }
        
       //Create a model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(
            id: newId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: false
            )
        
        //Save the model to the database
        let db = Firestore.firestore()
        
        db.collection("users")  //collection of users
            .document(uId)  //document of userID
            .collection("todos")  //another collection of todos
            .document(newId)  //
            .setData(newItem.asDictionary())
        
    }
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else { //how many seconds exits in a day is 86400
            return false
        }
        return true
    }
}
