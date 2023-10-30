//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by sonthuol on 30/10/2023.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        
        guard validate() else {
            return
        }
        
        // Try login
        Auth.auth().signIn(withEmail: email, password: password)
    
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fileds."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Plese enter valid email."
            return false
        }
 
        return true
    }
}
