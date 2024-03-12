//
//  ButtonsMain.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct ButtonsMain: View {
    var body: some View {
        NavigationLink(destination: SignIn().navigationBarBackButtonHidden(true) )
        { Text("Войти в аккаунт")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 80)
                    .foregroundStyle(Color.white)
                    .background(Color.button)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
        
        HStack {
            Text("Еще нет аккаунта?")
                .foregroundStyle(Color.white)
            VStack {
                NavigationLink(destination: Register()) { Text("Зарегестрироваться")
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                }
            }
        }.padding(.bottom, 100)
    }
}

#Preview {
    ButtonsMain()
}
