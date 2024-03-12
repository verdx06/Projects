//
//  APP.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct APP: View {
    var body: some View {
        NavigationLink(destination: Vneshka()) {
            Image(systemName: "lightbulb.fill")
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
                .padding(8)
                    .foregroundColor(.white)
                    .background(Color.purple)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("Внешний вид")}
        
        NavigationLink(destination: Vneshka()) {
            Image(systemName: "globe")
                .font(.system(size: 20))
                .frame(width: 20, height: 20)
                .padding(8)
                    .foregroundColor(.white)
                    .background(Color.orange)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("Язык")}
    }
}

#Preview {
    APP()
}
