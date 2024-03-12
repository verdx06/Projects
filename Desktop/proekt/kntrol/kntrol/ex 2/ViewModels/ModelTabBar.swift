//
//  ModelTabBar.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 28.02.2024.
//

import SwiftUI

struct ModelTabBar: View {
    
//    @State var selected = 0
    @Binding var selected: Int
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                self.selected = 0
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 25, height: 24)
                    .foregroundColor(self.selected == 0 ? .lightGreen : .gray)
                
            }
            Spacer()
            Button {
                self.selected = 1
            } label: {
                    HStack {
                        Circle()
                            .fill(self.selected == 1 ? .lightGreen : .tabBarBack)
                            .frame(width: 60, height: 60)
                            .overlay(
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .frame(width: 25, height: 24)
                                    .foregroundColor(self.selected == 1 ? .white : .gray)
                            )
                    }

                
            }
            
            Spacer()
            Button {
                self.selected = 2
            } label: {
                Image(systemName:  "ellipsis.bubble.fill")
                    .resizable()
                    .frame(width: 25, height: 24)
                    .foregroundColor(self.selected == 2 ? .lightGreen : .gray)
                
            }
            Spacer()
        }
    }
}

//#Preview {
//    ModelTabBar()
//}
