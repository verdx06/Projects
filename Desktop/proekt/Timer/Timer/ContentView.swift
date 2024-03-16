//
//  ContentView.swift
//  Timer
//
//  Created by Виталий Багаутдинов on 12.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var seconds = 60
    @State private var timer:Timer?
    var body: some View {
        Text("\(self.secondtominute(seconds: self.seconds))")
            .onAppear() {
                self.starttimer()
            }
            
        
    }
    
    func starttimer() {
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



#Preview {
    ContentView()
}
