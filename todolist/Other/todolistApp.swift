//
//  todolistApp.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/17/24.
//

import FirebaseCore
import SwiftUI

@main
struct todolistApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
