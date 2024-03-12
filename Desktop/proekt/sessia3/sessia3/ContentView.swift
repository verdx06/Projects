//
//  ContentView.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 26.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var darkmode = false
    
    var balance = "N10,712:00"
    var body: some View {
        NavigationView {
            VStack {
                ScrollView{
                    Divider()
                        .padding(.bottom)
                        .shadow(color: .black, radius: 1)
                    
                    Main(balance: balance)
                    
                    Toggle("Enable dark Mode", isOn: $darkmode)
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .padding()
                    
                    alltableview()
                    
                    
                }
                ZStack {
                    Spacer()
                    ZStack (alignment: .bottom) {
                        BottomRectangleView()
                            .foregroundColor(Color.black)
                            .frame(height: 30)
                        TabBarView()
                            .padding(.top)
                        
                    }
                }


            }
            
            
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ContentView()
}
