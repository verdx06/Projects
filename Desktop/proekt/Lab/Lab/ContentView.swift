//
//  ContentView.swift
//  Lab
//
//  Created by Виталий Багаутдинов on 01.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isChecked: Bool = false
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            HStack {
                Text("Click me")
                Spacer()
                if isChecked {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
