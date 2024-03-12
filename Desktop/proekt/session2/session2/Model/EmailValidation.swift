//
//  EmailValidation.swift
//  session2
//
//  Created by Виталий Багаутдинов on 29.02.2024.
//

import Foundation

class EmailValidation: ObservableObject {
    @Published var email: String = ""
    @Published var emailvalidmessage: String = ""
    
    func isValidEmail() {
        emailvalidmessage = "Invalid email format."
    }
    
}
