//
//  Main.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 26.02.2024.
//

import SwiftUI

struct Main: View {
    
    @State var eye = false
    
    let balance: String
    var body: some View {
        HStack(spacing: 0) {
            Image("avatar")
                .resizable()
                .frame(width: 80, height: 60)
                .clipShape(Circle())
            VStack (alignment: .leading){
                Text("Hello Ken")
                    .font(.system(size: 30))
                HStack (spacing: 0) {
                    Text("Current balance: ")
                        .font(.system(size: 16))
                    if !eye {
                        Text(balance)
                            .font(.system(size: 16))
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                    else {
                        Text("*********")
                            .font(.system(size: 16))
                            .foregroundColor(.blue)
                            .fontWeight(.bold)
                    }
                }
            }
            Spacer()
            Button(action: {
                eye.toggle()
            }, label: {
                if !eye {
                    Image("eye")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 20, height: 20)
                        .padding(.horizontal)
                }
                else {
                    Image(systemName: "eye")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 20, height: 20)
                        .padding(.horizontal)
                }
            })
        }
    }
}

#Preview {
    Main(balance: "N1000000000")
}
