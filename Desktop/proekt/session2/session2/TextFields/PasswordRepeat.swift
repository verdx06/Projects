//
//  PasswordRepeat.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct PasswordRepeat: View {
    @Binding var PasswordRepeat: String
    @State var visibletoggle = false
    var body: some View {
        ZStack {
            VStack (alignment: .leading) {
                Text("Confirm Password")
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.colorForText)
                if visibletoggle {
                    TextField("**********", text: $PasswordRepeat)
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.colorForText, lineWidth: 2)
                        )
                } else {
                    SecureField("**********", text: $PasswordRepeat)
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.colorForText, lineWidth: 2)
                        )
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    visibletoggle.toggle()
                }, label: {
                    Image("eye-slash")                        
                        .padding(.top, 28)
                        .padding(.horizontal)
                })
            }
        }
    }
}
