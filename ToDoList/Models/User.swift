//
//  User.swift
//  ToDoList
//
//  Created by sonthuol on 30/10/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let password: String
    let joined: TimeInterval
}
