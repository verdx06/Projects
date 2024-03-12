//
//  ContentView.swift
//  example
//
//  Created by Виталий Багаутдинов on 01.02.2024.
//

import SwiftUI

//Image("Logo")
//    .resizable()
//    .frame(width: 100, height: 120)
//Text("Sign in")
//    .fontWeight(.semibold)
//    .foregroundStyle(.white)
//    .font(.system(size: 30))

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("Logo")
                        .padding(.top, 22)
                    Text("ПРИВЕТ")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.system(size: 30))
                    Spacer()
                   
                    ButtonsMain()
                    
                }
            } .navigationBarBackButtonHidden(true)
        }
    }
}

public struct ColorField: ViewModifier {
    
    let noText: Bool
    let placeHolderKey: LocalizedStringKey
    
    public func body(content: Content) -> some View {
        ZStack (alignment: .leading)
        {
            Text(placeHolderKey)
                .foregroundStyle(.textfield.opacity(noText ? 1 : 0.0))
            
            content
        }
            
        }
    }


#Preview {
    ContentView()
}
