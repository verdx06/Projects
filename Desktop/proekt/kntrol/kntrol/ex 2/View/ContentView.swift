//
//  ContentView.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        ZStack {
            if selected == 0 {
                Home()
            }
            else if selected == 1{
                Main()
            }
            else {
                Chat()
            }
            
            VStack{
                Spacer()
                ZStack(alignment: .bottom) {
                    CustomTabView()
                    ModelTabBar(selected: $selected)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
