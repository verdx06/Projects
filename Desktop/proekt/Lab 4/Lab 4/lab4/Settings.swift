//
//  Settings.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 08.02.2024.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("ПРИЛОЖЕНИЕ")) {
                        APP()
                    }
                    Section(header: Text("ТЕХ. ПОДДЕРЖКА")) {
                        Support()
                    }
                }
            } .navigationTitle("Настройки")
        }
    }
}

#Preview {
    Settings()
}
