//
//  ModelProduct.swift
//  kntrol
//
//  Created by Виталий Багаутдинов on 28.02.2024.
//

import SwiftUI

struct ModelProduct: View {
    let NameImage: String
    var body: some View {
        VStack (alignment: .leading){
            Image(NameImage)
                .resizable()
                .frame(height: 300)
                .cornerRadius(15)
            Text("Belt suit blazer")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.vertical, 5)
            Text("$120")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .padding()
    }
}

//#Preview {
//    ModelProduct()
//}
