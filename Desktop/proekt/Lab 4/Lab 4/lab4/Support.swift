//
//  Support.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct Support: View {
    var body: some View {
        NavigationLink(destination: Vneshka()) {
            Image(systemName: "heart.fill")
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
                .padding(8)
                    .foregroundColor(.white)
                    .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("Написать отзыв")}
        
        NavigationLink(destination: Vneshka()) {
            Image(systemName: "envelope.fill")
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
                .padding(8)
                    .foregroundColor(.white)
                    .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("Связаться с разработчиками")}
        
        NavigationLink(destination: Vneshka()) {
            Image(systemName: "house.fill")
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
                .padding(8)
                    .foregroundColor(.white)
                    .background(Color.red)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("О приложении")}
    }
}

#Preview {
    Support()
}
