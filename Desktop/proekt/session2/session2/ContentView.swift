//
//  ContentView.swift
//  session2
//
//  Created by Виталий Багаутдинов on 15.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var password = ""
    @State private var editedText = ""

    var body: some View {
        SignIn()
    }
}

#Preview {
    ContentView()
}
