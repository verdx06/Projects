//
//  TextInfo.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct TextInfo: View {
    
    @State var Email: String
    @State var Password: String
    
    var body: some View {
        TextField("", text: $Email)
            .modifier(ColorField(noText: Email.isEmpty, placeHolderKey: "Email"))
            .padding(.leading, 40)
            .padding(.bottom, 10)
            .foregroundColor(.textfield)
        Rectangle()
            .padding(.horizontal, 30)
            .frame(width: .infinity, height: 2)
            .foregroundColor(.textfield)
        SecureField("", text: $Password)
            .modifier(ColorField(noText: Password.isEmpty, placeHolderKey: "Пароль"))
            .padding(.bottom, 10)
            .padding(.leading, 40)
            .padding(.top, 30)
            .foregroundColor(.textfield)
        Rectangle()
        
            .padding(.horizontal, 30)
            .frame(width: .infinity, height: 2)
            .foregroundColor(.textfield)
    }
}

#Preview {
    TextInfo(Email: $Email, Password: $Password)
}
