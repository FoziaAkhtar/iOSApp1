
// ===================================
//  ContentView.swift
//  iOSApp1
// ==================================
//  Created by Fozia
// ===================================

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // ===  Navigation ===
        
        NavigationStack {
            
            TabView {
                
        // === Welcome Page ===
                
        WelcomeView()
                
        // === Existing Order Pages ===
                
        ForEach(0..<4) { index in
                    
        OrderView(index: index)
                    
    }
                
        // === New Pages ===
                
        RatingView()
                
         HistoryView()
                
    }
            
        .tabViewStyle(
                
            PageTabViewStyle(
                    
                indexDisplayMode: .never
                    
           )
                
        )
            
        }
    }
}
// Preview Section

#Preview {

    ContentView()

}
