//
//  WelcomeView.swift
//  iOSApp1
//
//  Created by Fozia on 2026-05-24.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Spacer()
            
            // Tim Hortons Icon
            Image(systemName: "cup.and.saucer.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.red)
            
            // App Title
            Text("TimRun")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Subtitle
            Text("Team Coffee Run Organizer")
                .font(.title3)
                .foregroundColor(.gray)
            
            // Description
            Text("Save team orders, manage coffee runs, and make Tim Hortons trips easier for everyone.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Start Button
            Button(action: {
                print("Start Tim Run")
            }) {
                Text("Start Order")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Spacer()
            
            // Bottom Text
            Text("Powered by SwiftUI")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
