//
//  ContentView.swift
//  emailValidate
//
//  Created by Виталий Багаутдинов on 08.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewmail = emailValidate()
    @State var isValid = false
    
    var body: some View {
        VStack {
            TextField("eee", text: $viewmail.email)
                .padding()
                .overlay(
                    Rectangle()
                        .stroke()
                )
            Button(action: {
                isValid = viewmail.emailisvalidate()
            }, label: {
                Text("Button")
            })
            
            if isValid {
                Text("True")
                    .foregroundColor(.green)
                    .font(.system(size: 32))
            }
            else {
                Text("False")
                    .foregroundColor(.red)
                    .font(.system(size: 32))
            }
        }
        .padding()
    }
}

class emailValidate: ObservableObject {
    @Published var email: String = ""
    
    func emailisvalidate() -> Bool {
        let emailRegex = "[A-Z0-9a-z+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
    
}

#Preview {
    ContentView()
}
