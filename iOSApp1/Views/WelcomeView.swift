// =============================
//  WelcomeView.swift
//  iOSApp1
//
//  Created by Fozia
// =============================

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Spacer()
            
            // Added Tim Hortons Icon
            Image(systemName: "cup.and.saucer.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(.red)
            
            // Added App Title
            Text("TimRun")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Added Subtitle
            Text("Team Coffee Run Organizer")
                .font(.title3)
                .foregroundColor(.gray)
            
            // Added Description
            Text("Save team orders, manage coffee runs, and make Tim Hortons trips easier for everyone.")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Added Start Button
            Button(action: {
                
            // Print Message in Consol when button is tabbed
                print("Start Tim Run")
            }) {
                    Text("Start Order")  // Button text
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            
            // Pushes Bottom Text downards
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
