//
//  TabBarView.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 05.03.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "house")
                    .resizable()
                    .frame(width: 40, height: 30)
                Text("Home")
            }
            .padding(.leading)
            Spacer()
            
            VStack {
                Image(systemName: "wallet.pass")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Wallet")
            }
            Spacer()
            
            VStack {
                Image(systemName: "car")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Track")
            }
            Spacer()
            
            VStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Wallet")
            }
            .padding(.trailing)
        }
    }
}

#Preview {
    TabBarView()
}
