//
//  Validation.swift
//  session2
//
//  Created by Виталий Багаутдинов on 29.02.2024.
//

import Foundation

class Validation: ObservableObject {
    @Published var email: String = ""
    @Published var emailvalidmessage: String = ""
    
    @Published var phone: String = ""
    @Published var phonevalidmessage: String = ""
    
    @Published var name: String = ""
    @Published var namevalidmessage: String = ""
    
    @Published var password: String = ""
    @Published var passwordvalidmessage: String = ""
    
    @Published var passwordrepeat: String = ""
    @Published var passwordrepeatvalidmessage: String = ""
    
    func isValidEmail() {
        let emailRegex = "[A-Z0-9a-z]+@[A-Za-z0-9.-]+\\[A-Za-z]{2,64}"
        let predicat = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        if predicat.evaluate(with: email) {
            emailvalidmessage = "ok"
        } else {
            emailvalidmessage = "u loser"
        }
    }
    
    func isValidPhone() {
        phonevalidmessage = "Invalid phone format."
    }
    
    func isValidName() {
        namevalidmessage = "Invalid name format."
    }
    
    func isValidPassword() {
        passwordvalidmessage = "Invalid password format."
    }
    
    func isValidPasswordRepeat() {
        passwordrepeatvalidmessage = "Invalid password format."
    }
}
