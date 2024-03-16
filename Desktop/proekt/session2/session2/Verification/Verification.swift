//
//  Verification.swift
//  session2
//
//  Created by Виталий Багаутдинов on 13.03.2024.
//

import SwiftUI

struct Verification: View {
    @State var code = ""
    @State var seconds = 60
    @State var timer: Timer?
    @State var again = false
    
    var body: some View {
        VStack {
            Code(numberoffield: 6)
                .padding(.horizontal)
            Text("if you didn`t receive code, resend after \(self.secondtominute(seconds: self.seconds))")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding()
                .onAppear() {
                    self.starttime()
                }
            if again {
                Button(action: {
                    //
                }, label: {
                    Text("again")
                        .foregroundColor(.white)
                        .frame(maxWidth: 100)
                        .frame(height: 50)
                        .background(.blue)
                        .cornerRadius(10)
                })
            }
            Button(action: {
                //
            }, label: {
                Text("Set New Password")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            })
            .padding(.top, 100)
        }
    }
    
    func starttime() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            if self.seconds > 0 {
                self.seconds -= 1
            }
        })
    }
    
    func secondtominute(seconds: Int) -> String {
        let minute = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minute, seconds)
    }
}

//struct TIMER

//struct Verification: View {
//    @State var seconds = 60
//    @State var timer: Timer?
//    
//    var body: some View {
//        Text("\(self.secondtominute(seconds: self.seconds))")
//            .onAppear() {
//                self.starttimer()
//            }
//    }
//    
//    func starttimer() {
//        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
//            if self.seconds > 0 {
//                self.seconds -= 1
//            }
//        })
//    }
//    
//    func secondtominute(seconds: Int) -> String {
//        let minute = seconds / 60
//        let secunds = seconds % 60
//        return String(format: "%02d:%02d", minute, seconds)
//    }
//}

#Preview {
    Verification()
}
