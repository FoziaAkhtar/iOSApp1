//
//  HeaderView.swift
//  iOSApp1
//
//  Created by Fozia on 2026-05-24.
//

import SwiftUI

struct HeaderView: View {
    
    let personName: String
    
    var body: some View {
        VStack {
            Text(personName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
            .foregroundColor(.red)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderView(personName: "Fozia")
}
