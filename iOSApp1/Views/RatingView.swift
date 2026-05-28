//
//  RatingView.swift
//  iOSApp1
//
//  Created by Fozia on 2026-05-28.
//

import SwiftUI

struct RatingView: View {

    @State private var rating = 0

    var body: some View {

        VStack(spacing:30){

            HeaderView(

                personName:

                "Rating"

            )

            Text(

                "Rate Your Experience"

            )

            .font(.title)


            HStack{

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

                    .font(.largeTitle)

                    .foregroundColor(.yellow)

                    .onTapGesture{

                        rating = number

                    }

                }

            }

            Text(

                "Rating: \(rating)/5"

            )

            Spacer()

        }

        .padding()

    }

}

#Preview{

    RatingView()

}
