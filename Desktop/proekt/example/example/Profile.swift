//
//  Profile.swift
//  example
//
//  Created by Виталий Багаутдинов on 06.02.2024.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ZStack {
            Image("sign")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MainProfile: View {
    var body: some View {
        ZStack {
            Image("sign")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("dolbaeb")
        }
    }
}

struct Profile: View {
    var body: some View {
        TabView {
            Main()
                .tabItem {Image("Home-2")}
            MainProfile()
                .tabItem {Image("User")}
        } .onAppear() {
            UITabBar.appearance().backgroundColor = .tab
        }
    }
}

#Preview {
    Profile()
}
