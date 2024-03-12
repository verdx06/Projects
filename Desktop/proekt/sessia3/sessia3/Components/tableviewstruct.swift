//
//  tableview.swift
//  sessia3
//
//  Created by Виталий Багаутдинов on 26.02.2024.
//

import SwiftUI

struct tableviewstruct: View {
    let ImageTable: String
    let TextUp: String
    let TextDown: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .fill(.white)
                .shadow(radius: 2)
            HStack{
                Image(systemName: ImageTable)
                    .resizable()
                    .frame(width: 30, height: 30)
                VStack(alignment: .leading) {
                    Text(TextUp)
                        .font(.system(size: 16))
                        .font(.footnote)
                    Text(TextDown)
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding(.horizontal)
        }
        .frame(height: 75)
        .padding(.horizontal)
    }
}

#Preview {
    tableviewstruct(ImageTable: "person.crop.circle", TextUp: "koko", TextDown: "jambo")
}
