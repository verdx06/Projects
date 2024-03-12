//
//  SignIn.swift
//  example
//
//  Created by Виталий Багаутдинов on 06.02.2024.
//

import SwiftUI




struct SignIn: View {
    @State private var Email = ""
    @State private var Password = ""
    var body: some View {
            ZStack {
                Image("sign")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack (alignment: .leading) {
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 100, height: 120)
                    Text("Sign in")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                        .padding(.leading, 30)
                    
                            
                    
                    Spacer()

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
                    
                    ButtonSign()
                    
                    ButtonRegister()
                    
                    ButtonProfile()
                    
                    Spacer()
                }
                
            }
    }
}

#Preview {
    SignIn()
}
