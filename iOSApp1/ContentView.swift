//
//  ContentView.swift
//  iOSApp1
//
//  Created by Fozia on 2026-05-24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            
            ForEach(0 ..< 4) { index in
                OrderView(index: index)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    ContentView()
}
