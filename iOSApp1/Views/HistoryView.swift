//
//  HistoryView.swift
//  iOSApp1
//
//  Created by Fozia on 2026-05-28.
//

import SwiftUI

struct HistoryView: View {

    let orderHistory = [

        "Large Double Double",

        "Ice Capp",

        "French Vanilla",

        "Medium Coffee"

    ]

    var body: some View {

        VStack{

            HeaderView(

                personName:

                "History"

            )

            Text(

                "Previous Orders"

            )

            .font(.title)

            List{

                ForEach(

                    orderHistory,

                    id:\.self

                ){

                    order in

                    Text(order)

                }

            }

        }

    }

}

#Preview{

    HistoryView()

}
