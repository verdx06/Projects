//
//  ContentView.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text here", text: $text)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
