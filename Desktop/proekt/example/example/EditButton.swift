//
//  EditButton.swift
//  example
//
//  Created by Виталий Багаутдинов on 07.02.2024.
//

import SwiftUI

struct EditButton: View {
    
    @State var Checked = false
    
    var body: some View {
        NavigationLink(destination: Profile(),
        isActive: $Checked)
            { }
        Button("Sign in") {
            if self.Checked == false { //тут будет проверка на логин и пароль в базе данных
                self.Checked = true
            }
        }   .font(.title3)
            .fontWeight(.medium)
            .padding(.vertical, 20)
            .padding(.horizontal, 140)
            .foregroundStyle(Color.white)
            .background(Color.button)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 40)
            .padding(.leading, 30)
    }
}

#Preview {
    EditButton()
}
