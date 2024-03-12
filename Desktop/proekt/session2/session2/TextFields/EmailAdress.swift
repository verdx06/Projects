//
//  EmailAdress.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct EmailAdress: View {
    @Binding var Email:String
    var body: some View {
        VStack (alignment: .leading) {
            
            //регулярные выражения
            
            Text("Email Address")
                .font(.system(size: 15))
                .multilineTextAlignment(.leading)
                .foregroundColor(.colorForText)
            TextField("***********@mail.com", text: $Email)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.colorForText, lineWidth: 2)
                )
        }
    }
}

