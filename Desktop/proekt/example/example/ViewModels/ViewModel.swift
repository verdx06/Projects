//
//  ViewModel.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import Foundation

class viewModel {
    var statusText = Dynamic("")
    
    func userButtonPressed(login: String, password: String) {
        if login == User.logins[0].login || password == User.logins[0].password {
            statusText.value = "succesfull"
        }
    }
}
