//
//  Main.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 27.02.2024.
//

import SwiftUI

struct Main: View {
    
    @State var all = false
    @State var party = false
    @State var camping = false
    
    var body: some View {
        
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: 15),
            GridItem(.flexible(), spacing:15)
        ]
        
        ZStack {
            Color.back
                .edgesIgnoringSafeArea(.all)
            VStack {
            ScrollView (.horizontal) {
                
                HStack {
                    
                    Button(action: {
                        
                        all.toggle()
                        party = false
                        camping = false
                        
                    }, label: {
                        Text("All")
                    })
                    .foregroundColor(all ? .white : .gray)
                    .padding(20)
                    .background(all ? .lightGreen : .tabBarBack)
                    .cornerRadius(15)
                    
                    Button(action: {
                        party.toggle()
                        all = false
                    }, label: {
                        HStack {
                            Text("🎉")
                                .padding(.horizontal, 5)
                            Text("Party")
                        }
                    })
                    .foregroundColor(party ? .white : .gray)
                    .padding(20)
                    .background(party ? .lightGreen : .tabBarBack)
                    .cornerRadius(15)
                    
                    Button(action: {
                        camping.toggle()
                        all = false
                    }, label: {
                        HStack {
                            Text("🏕")
                                .padding(.horizontal, 5)
                            Text("Camping")
                        }
                    })
                    .foregroundColor(camping ? .white : .gray)
                    .padding(20)
                    .background(camping ? .lightGreen : .tabBarBack)
                    .cornerRadius(15)
                    
                    Button(action: {
                        //
                    }, label: {
                        Text("More")
                    })
                    .foregroundColor(.gray)
                    .padding(20)
                    .background(.tabBarBack)
                    .cornerRadius(15)
                }
            }
            .padding()
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ModelProduct(NameImage: "german")
                        ModelProduct(NameImage: "ambassador")
                        ModelProduct(NameImage: "german")
                        ModelProduct(NameImage: "ambassador")
                        ModelProduct(NameImage: "german")
                        ModelProduct(NameImage: "ambassador")
                    }
                }
            }
        }
    }
}

#Preview {
    Main()
}
