
// ===================================
//  HeaderView.swift
//  iOSApp1
// ===================================
//  Created by Fozia
// ====================================

import SwiftUI

// === Header section shown at the top of each order page ===
struct HeaderView: View {
    
    // === Stores the person's name ===
    let personName: String
    
    var body: some View {
        
    // === Main vertical layout ===
        VStack {
            
    // === Display Persons Name ===
            
            Text(personName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
    // === Display Page icons indicator ===
            
    HStack {
                
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            
    // === Icons styling ===
            
            .font(.title2)
            .foregroundColor(.red)
        }
    }
}

// Previews Section
#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(personName: "Fozia")
}
