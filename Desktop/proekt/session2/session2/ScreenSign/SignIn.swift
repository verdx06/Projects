//
//  SignIn.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct SignIn: View {
    @StateObject var nameviewmodel = Validation()
    @StateObject var phoneviewmodel = Validation()
    
    @StateObject var emailviewmodel = Validation()
    
    @StateObject var passwordviewmodel = Validation()
    @StateObject var passwordrepeatviewmodel = Validation()
    
    @State var apporval = false
    
    
    var body: some View {
        NavigationView {

            
            VStack() {
                Text("Create an account")
                    .font(.system(size: 24))
                    .padding(.top, 50)
                    .frame(maxWidth: .infinity, alignment: .leading) // Прижимаем текст к левой стороне
                    .padding(.bottom, 5)
                Text("Complete the sign up process to get started")
                    .font(.system(size: 14))
                    .foregroundColor(.colorForText)
                    .frame(maxWidth: .infinity, alignment: .leading) // Прижимаем текст к левой стороне
                
                VStack(alignment: .leading, spacing: 0) {
                    Custom(placeholder: "Full Name", uptext: "Ivan Ivanov", secure: "0", text: $nameviewmodel.name)
                        .padding(.top, 20)
                    if !nameviewmodel.namevalidmessage.isEmpty {
                        Text(nameviewmodel.namevalidmessage)
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                }.padding(.bottom, 15)
            
                VStack(alignment: .leading, spacing: 0) {
                    Custom(placeholder: "+7(999)999-99-99", uptext: "Phone Number", secure: "0", text: $phoneviewmodel.phone)
                    if !phoneviewmodel.phonevalidmessage.isEmpty {
                        Text(phoneviewmodel.phonevalidmessage)
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading, spacing: 0) {
                    Custom(placeholder: "***********@mail.com", uptext: "Email", secure: "0", text: $emailviewmodel.email)
                        .keyboardType(.emailAddress)
                    if !emailviewmodel.emailvalidmessage.isEmpty {
                        Text(emailviewmodel.emailvalidmessage)
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading, spacing: 0) {
                    Custom(placeholder: "**********", uptext: "Password", secure: "1", text: $passwordviewmodel.password)
                    if !passwordviewmodel.passwordvalidmessage.isEmpty {
                        Text(passwordviewmodel.passwordvalidmessage)
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                }.padding(.bottom, 15)
                
                VStack(alignment: .leading, spacing: 0) {
                    Custom(placeholder: "**********", uptext: "Password", secure: "1", text: $passwordrepeatviewmodel.passwordrepeat)
                    if !passwordrepeatviewmodel.passwordrepeatvalidmessage.isEmpty {
                        Text(passwordrepeatviewmodel.passwordrepeatvalidmessage)
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                } .padding(.bottom, 15)
                
                HStack {
                    Button(action: {
                        apporval.toggle()
                    }, label: {
                        if !apporval {
                            Image(systemName: "square")
                        }
                        else {
                            Image(systemName: "checkmark.square.fill")
                        }
                    })
                    Spacer()
                    AgreeText()
                    Spacer()
                }
                .padding(.bottom,20)
                
                if apporval  {
                    Button {
                        emailviewmodel.isValidEmail()
                        nameviewmodel.isValidName()
                        passwordviewmodel.isValidPassword()
                        passwordrepeatviewmodel.isValidPasswordRepeat()
                        phoneviewmodel.isValidPhone()
                    } label:  {
                        Text("Sign In")
                            .frame(width: 342, height: 42)
                            .foregroundStyle(Color.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                    }
                }
                else {
                    NavigationLink {
                        ContentView()
                    } label:  {
                        Text("Sign In")
                            .frame(width: 342, height: 42)
                            .foregroundStyle(Color.white)
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                    } .disabled(true)
                }
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
                
                

                
            }.padding(.horizontal)
        }

    }
}


#Preview {
    SignIn()
}
