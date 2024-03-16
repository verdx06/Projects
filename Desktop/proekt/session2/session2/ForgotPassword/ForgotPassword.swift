//
//  ForgotPassword.swift
//  session2
//
//  Created by Виталий Багаутдинов on 20.02.2024.
//

import SwiftUI

struct ForgotPassword: View {
    @State private var email = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Forgot Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 24))
                    .padding(.bottom, 5)
                Text("Enter your email address")
                    .foregroundColor(.colorForText)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 50)
                Custom(placeholder: "***********@mail.com", uptext: "Email Address", secure: "0", text: $email)
                    .padding(.bottom, 50)
                NavigationLink {
                    Verification()
                } label: {
                    Text("Send OTP")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 42)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                .padding(.bottom)
                HStack(spacing: 0) {
                    Text("Remember password? Back to ")
                        .font(.system(size: 14))
                        .foregroundColor(.colorForText)
                    NavigationLink {
                        Log_in()
                    } label:  {
                        Text("Sign In")
                            .font(.system(size: 16))
                    }
                }
                
                Spacer()
                Spacer()

            } .padding(.horizontal)
        }
    }
}

#Preview {
    ForgotPassword()
}
