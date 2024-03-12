//
//  Log_in.swift
//  session2
//
//  Created by Виталий Багаутдинов on 20.02.2024.
//

import SwiftUI

struct Log_in: View {
    @State private var email = ""
    @State private var password = ""
    
    @State private var remember = false
    
    @State private var showforgot = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome Back")
                    .font(.system(size: 24))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                Text("Fill in your email and password to continue")
                    .font(.system(size: 14))
                    .foregroundColor(.colorForText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                
                //TEXTFIELDS
                Custom(placeholder: "***********@mail.com", uptext: "Email", secure: "0", text: $email)
                    .padding(.bottom, 15)
                Custom(placeholder: "*********", uptext: "Password", secure: "1", text: $password)
                    .padding(.bottom, 15)
                
                HStack(spacing:3){
                    Button(action: {
                        remember.toggle()
                        print(remember)
                    }, label: {
                        remember ? Image(systemName: "checkmark.square.fill")
                            .foregroundColor(.blue) : Image(systemName: "square")
                            .foregroundColor(.colorForText)
                    })
                    Text("Remember password")
                        .foregroundColor(.colorForText)
                        .font(.system(size: 12))
                    
                    Spacer()
                    
                    Button(action: {
                        showforgot.toggle()
                    }, label: {
                        Text("Forgot password")
                            .font(.system(size: 12))
                    }) .sheet(isPresented: $showforgot, content: {
                        ForgotPassword()
                    })
                }
                
                Spacer()
                
                NavigationLink {
                    //
                } label: {
                    Text("Log In")
                        .frame(maxWidth: .infinity)
                        .frame(height: 42)
                        .foregroundStyle(Color.white)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                .padding(.bottom, 15)
                VStack{
                    HStack(spacing: 3){
                        Text("Already have an account?")
                            .font(.system(size: 13))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.colorForText)
                        NavigationLink {
                            Log_in()
                        } label: {
                            Text("Sign in")
                                .font(.system(size: 13))
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.bottom, 20)
                    Text("or sign in using")
                        .font(.system(size: 13))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.colorForText)
                        .padding(.bottom, 10)
                    Image(systemName: "basketball.circle")
                }
                Spacer()
                

                
            }.padding(.horizontal)
        }
    }
}

#Preview {
    Log_in()
}
