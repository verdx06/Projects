//
//  ButtomProfile.swift
//  example
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct ButtomProfile: View {
    var body: some View {
        NavigationLink(destination: SignIn()) { Text("Профиль")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.vertical, 20)
                .padding(.horizontal, 130)
                .foregroundStyle(Color.white)
                .background(Color.button)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } .padding(.top, 20)
            .padding(.leading, 30)
    }
}

#Preview {
    ButtomProfile()
}
