//
//  ButtonRegister.swift
//  example
//
//  Created by Виталий Багаутдинов on 07.02.2024.
//

import SwiftUI

struct ButtonRegister: View {
    var body: some View {
        NavigationLink(destination: Register()) { Text("Register")
                .foregroundStyle(.white)
                .font(.system(size: 20))
                .padding(.trailing, 280)
        } .padding(.top, 20)
            .padding(.leading, 30)
    }
}

#Preview {
    ButtonRegister()
}
