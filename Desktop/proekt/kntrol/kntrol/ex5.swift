//
//  ex5.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 28.02.2024.
//

import SwiftUI

struct ex5: View {
    @State private var topLeftButtonPressed = false
        @State private var bottomLeftButtonPressed = false
        @State private var bottomRightButtonPressed = false

        var body: some View {
            VStack {
                HStack {
                    Button(action: {
                        topLeftButtonPressed.toggle()
                    }) {
                        Text("Top Left Button")
                            .padding()
                            .background(topLeftButtonPressed ? Color.blue : Color.clear)
                    }
                }
                Spacer()
                VStack {
                    Button(action: {
                        if topLeftButtonPressed {
                            bottomLeftButtonPressed.toggle()
                            bottomRightButtonPressed = false
                        }
                    }) {
                        Text("Bottom Left Button")
                            .padding()
                            .background(bottomLeftButtonPressed ? Color.blue : Color.clear)
                    }
                    Button(action: {
                        if topLeftButtonPressed {
                            bottomRightButtonPressed.toggle()
                            bottomLeftButtonPressed = false
                        }
                    }) {
                        Text("Bottom Right Button")
                            .padding()
                            .background(bottomRightButtonPressed ? Color.blue : Color.clear)
                    }
                }
            }
        }
    }



#Preview {
    ex5()
}
