//
//  Login.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct Login: View {
    @Binding var Login:String
    var body: some View {
        VStack(alignment: .leading){
            
            VStack(alignment: .leading){
                
                Text("Full name")
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.colorForText)
                TextField("Ivan Ivanov", text: $Login)
                    .padding(8)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.colorForText, lineWidth: 2)
                    )
            }
        }
    }
}


