//
//  ButtonSign.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct ButtonSign: View {
    
    @State var Checked = false
    
    var body: some View {
        NavigationLink(destination: Profile(),
        isActive: $Checked)
            { }
        Button("Sign in") {
            if self.Checked == false {
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
    ButtonSign()
}
