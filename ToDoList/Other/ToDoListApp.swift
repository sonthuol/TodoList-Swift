//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by sonthuol on 30/10/2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
