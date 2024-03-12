//
//  ex3.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 28.02.2024.
//

import SwiftUI

struct ex3: View {
    @State private var shouldAnimate = false
    
    var body: some View {
        VStack {
            Image("german")
                .resizable()
                .frame(width: 100, height: 100)
                .offset(y: shouldAnimate ? 600 : 0)
            
            
            Spacer()
            
            Image("ambassador")
                .resizable()
                .frame(width: 100, height: 100)
            
            Spacer()
        }
        .onAppear {
            withAnimation(.easeInOut) {
                self.shouldAnimate = true
            }
        }
    }
}



#Preview {
    ex3()
}
