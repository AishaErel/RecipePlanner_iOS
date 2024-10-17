//
//  User.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import Foundation
struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval //when did they sign up
    // we dont take record of user's password
}
