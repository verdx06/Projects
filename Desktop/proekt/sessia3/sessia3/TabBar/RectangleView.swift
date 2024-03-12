//
//  Rectangle.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 05.03.2024.
//

import SwiftUI


struct BottomRectangleView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color.white)
            .frame(height: 100)
            .edgesIgnoringSafeArea(.all)
            .shadow(radius: 10)
    }
}


struct RectangleView: View {
    
    
    var body: some View {
        VStack {
            Spacer()
            ZStack (alignment: .bottom) {
                BottomRectangleView()
                    .foregroundColor(Color.white)
                    .frame(height: 30)
                
            }
        }
    }
}

#Preview {
    RectangleView()
}
