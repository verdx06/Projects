//
//  dynamicList.swift
//  Lab 4
//
//  Created by Виталий Багаутдинов on 16.02.2024.
//

import SwiftUI

struct App: Identifiable {
    var id = UUID()
    var name: String
    var country: String
}


struct dynamicList: View {
    
    @State var Apps = [
        App(name: "Isle Of Skye", country: "Switzerland"),
        App(name: "Steinweg", country: "Germany"),
        App(name: "Alpine", country: "Austria"),
        App(name: "Neuschwanstein", country: "Germany"),
        App(name: "Mont St Michel", country: "France")
    ]
    
    var body: some View {
        List(Apps) {app in
            Text(app.name)
        }
    }
}

#Preview {
    dynamicList()
}
