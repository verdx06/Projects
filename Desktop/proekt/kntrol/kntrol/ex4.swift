//
//  ex4.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 28.02.2024.
//

import SwiftUI

struct ex4: View {
    @State var angle: Double = 0
    var body: some View {
        ZStack {
            Image(systemName: "multiply")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .rotationEffect(.degrees(angle))
            Image(systemName: "multiply")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
                .rotationEffect(.degrees(angle+45))
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                angle = 360
            }
        }
    }
}


#Preview {
    ex4()
}
