//
//  Code.swift
//  session2
//
//  Created by Виталий Багаутдинов on 13.03.2024.
//

import SwiftUI

struct Code: View {
    
    let numberoffield: Int
    @State var code: [String]
    @FocusState var focus: Int?
    
    init(numberoffield: Int) {
        self.numberoffield = numberoffield
        self.code = Array(repeating: "", count: numberoffield)
    }
    
    var body: some View {
        HStack {
            ForEach(0..<numberoffield, id: \.self) {index in
                TextField("", text: $code[index])
                    .keyboardType(.numberPad)
                    .padding()
                    .frame(width: 48, height: 48)
                    .background(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 1).foregroundColor(.gray))
                    .multilineTextAlignment(.center)
                    .focused($focus, equals: index)
                    .tag(index)
                    .onChange(of: code[index]) {newValue in
                        if code[index].count > 1 {
                            code[index] = String(code[index].suffix(1))
                        }
                        focus = (focus ?? 0) + 1
                    }
                    .padding(5)
            }
        }
    }
}

#Preview {
    Code(numberoffield: 6)
}
