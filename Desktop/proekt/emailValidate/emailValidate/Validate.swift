//
//  Validate.swift
//  emailValidate
//
//  Created by Виталий Багаутдинов on 08.03.2024.
//

import Foundation

class EmailValidatePredicate: ObservableObject {
    
    @Published var email: String = ""
    
    func EmailValidate() -> Bool {
        let emailRegex = "[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
        return predicate.evaluate(with: email)
            
    }
}
