// =====================================
//  RatingView.swift
//  iOSApp1
// ======================================
//  Created by Fozia on 2026-05-28.
// ======================================

import SwiftUI

// rating Screens

struct RatingView: View {

    // Stores rating values
    @State private var rating = 0

    var body: some View {

        // Main vertical Layout
        VStack(spacing:30){

            //===========================
            // Header
            //===========================
            HeaderView(

                personName:

                "Rating"

            )
            // ===========================
            // Screen
            // ===========================
            
            Text(

                "Rate Your Experience"

            )

            .font(.title)
             
            // ===========================
            // Star Rating
            // ===========================
            
            HStack{
                
                // ====Created 5 stars====
                
                ForEach(1...5,id:\.self){

                    number in

                    Image(

                        systemName:

                        number <= rating

                        ?

                        "star.fill"

                        :

                        "star"

                    )
                    
                    // Make Stars bigger
                    .font(.largeTitle)
                    
                    // Make Stars yellow
                    .foregroundColor(.yellow)
                    
                    // When tapping stars
                    .onTapGesture{

                        // Show Rating numbers
                        rating = number

                    }

                }

            }
            
            //====== Show Current Rating ==========

            Text(

                "Rating: \(rating)/5"

            )

            // Pushes Content Upward
            Spacer()

        }

        // Screen padding
        .padding()

    }

}

#Preview{

    RatingView()

}
