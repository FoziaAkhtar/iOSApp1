// =====================================
//  RatingView.swift
//  iOSApp1
// ======================================
//  Created by Fozia
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
                    .font(.largeTitle)

                    .fontWeight(.bold)
            

            Text(

                       "How was your coffee order today?"

                       )

                       .foregroundColor(.gray)

            // ===========================
            // Star Rating
            // Rating Card
            // ===========================

            VStack(spacing:20){
                
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

            //==== Pushes Content Upward =========
            Spacer()

        }

        // ==== Screen padding ======

        .frame(maxWidth:.infinity)

                   .background(

                       Color.gray.opacity(0.15)

                   )

                   .cornerRadius(20)


                   // =============================
                   // Navigation To History Page
                   // =============================

                   NavigationLink(

                       destination:

                       HistoryView()

                   ){

                       Text("View Order History")

                           .font(.headline)

                           .padding()

                           .frame(maxWidth:.infinity)

                           .background(Color.red)

                           .foregroundColor(.white)

                           .cornerRadius(12)

                   }


                   Spacer()

               }

               .padding()

           }

       }


// Preview Section

#Preview{

RatingView()

       }
