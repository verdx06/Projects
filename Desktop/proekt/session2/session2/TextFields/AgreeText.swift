//
//  AgreeText.swift
//  session2
//
//  Created by Виталий Багаутдинов on 19.02.2024.
//

import SwiftUI

struct AgreeText: View {
    var body: some View {
        VStack (alignment: .center){
            HStack(spacing: 3) {
            Text("By ticking this box, you agree to our ")
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
                .foregroundColor(.colorForText)
                
                NavigationLink {
                    Agree()
                }label: {
                    Text("Terms")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                }
                
            }
            HStack(spacing: 3){
                NavigationLink {
                    Agree()
                } label: {
                    Text("and conditions and private policy")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                }
            }
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    AgreeText()
}
