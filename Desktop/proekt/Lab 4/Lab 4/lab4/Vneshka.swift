//
//  Vneshka.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct Vneshka: View {
    @State private var System = false
    @State private var alwaysLight = false
    @State private var alwaysDark = false

    var body: some View {
        VStack {
            Form {
                Section(header: Text("СВЕТЛАЯ ТЕМА"), footer: Text("При включенном индикаторе повторяется системное оформление")) {
                    Toggle("Системная тема", isOn: $System)
                }
                
                
                Button(action: {
                    alwaysLight.toggle()
                    alwaysDark = false
                    System = false
                }) {
                    HStack {
                        Text("Всегда светлая")
                            .foregroundColor(.black)
                        Spacer()
                        if alwaysLight {
                            Image(systemName: "checkmark").foregroundColor(.orange)
                        }
                    }
                }
                Button(action: {
                    alwaysDark.toggle()
                    alwaysLight = false
                    System = false
                }) {
                    HStack {
                        Text("Всегда темная")
                            .foregroundColor(.black)
                        Spacer()
                        if alwaysDark{
                            Image(systemName: "checkmark").foregroundColor(.orange)
                        }
                    }
                }
            }
        }
        .navigationTitle("Внешний вид")
    }
}


#Preview {
    Vneshka()
}
