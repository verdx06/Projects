//
//  ButtonView.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 05.03.2024.
//

import SwiftUI

struct ButtonView: View {
    
    var text: String
    var symbole: Bool = false
    var symbole_text: String
    
    var toggle_color = false
    
    var body: some View {
        
        if self.symbole {
            Button(action: {
                toggle_color.toggle()
            }, label: {
                HStack {
                    Text(symbole_text)
                        .padding(.horizontal, 5)
                    Text(text)
                }
            })
            .foregroundColor(.gray)
            .padding(20)
            .background(.tabBarBack)
            .cornerRadius(15)
        }
        
        else {
            Button(action: {
                toggle_color.toggle()
            }, label: {
                Text(text)
            })
            .foregroundColor(.gray)
            .padding(20)
            .background(toggle_color ? .lightGreen : .tabBarBack)
            .cornerRadius(15)
        }
        
    }
}
