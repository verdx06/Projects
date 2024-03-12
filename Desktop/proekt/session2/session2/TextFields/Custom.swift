//
//  Custom.swift
//  session2
//
//  Created by Виталий Багаутдинов on 21.02.2024.
//

import SwiftUI

struct Custom: View{
    let placeholder: String
    let uptext: String
    let secure: String
    @State var visibletoggle = false
    @Binding var text: String
    var body: some View{
        VStack(alignment: .leading){
            
            VStack(alignment: .leading){
                if secure == "0" {
                    Text(uptext)
                        .font(.system(size: 15))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.colorForText)
                    TextField(placeholder, text: $text)
                        .padding(8)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.colorForText, lineWidth: 2)
                        )
                } else {
                    ZStack {
                        VStack (alignment: .leading) {
                            Text(uptext)
                                .font(.system(size: 15))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.colorForText)
                            if visibletoggle {
                                TextField(placeholder, text: $text)
                                    .padding(8)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.colorForText, lineWidth: 2)
                                    )
                            } else {
                                SecureField(placeholder, text: $text)
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
        }
    }
}


