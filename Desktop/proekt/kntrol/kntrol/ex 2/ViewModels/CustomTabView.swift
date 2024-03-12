//
//  CustomTabView.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 27.02.2024.
//

import SwiftUI


struct BottomRectangleView: View {
    var body: some View {
        Rectangle()
            .cornerRadius(30)
            .foregroundColor(Color.tabBarBack)
            .frame(height: 100)
            .edgesIgnoringSafeArea(.all)
    }
}


struct CustomTabView: View {
    
    
    var body: some View {
        VStack {
            Spacer()
            ZStack (alignment: .bottom) {
                BottomRectangleView()
                    .foregroundColor(Color.tabBarBack)
                    .frame(height: 30)
                
            }
        }
    }
}

#Preview {
    CustomTabView()
}
