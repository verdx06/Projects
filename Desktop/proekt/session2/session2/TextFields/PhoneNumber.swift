//
//  PhoneNumber.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct PhoneNumber: View {
    @Binding var Phone:String
    var body: some View {
        VStack {
            VStack (alignment: .leading) {
                Text("Phone Number")
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.colorForText)
                TextField("+7(999)999-99-99", text: $Phone)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.colorForText, lineWidth: 2)
                    )
            }
        }
    }
}

