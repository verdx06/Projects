//
//  User.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}


extension User {
    static var logins = [User(login: "verdx", password: "1234")]
}
