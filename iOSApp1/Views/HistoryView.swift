

// ========================
//  HistoryView.swift
//  iOSApp1
// =========================
//  Created by Fozia
// =========================

import SwiftUI

struct HistoryView: View {

    // ===========================
    // Store Person Names
    // ===========================

    let personNames = [

        "Fozia",

        "Ali",

        "Ahmad",

        "Abbas"

    ]

    // ===========================
    // Store Previous Orders
    // ===========================

    let orderHistory = [

        "Large Double Double",

        "Ice Capp",

        "French Vanilla",

        "Medium Coffee"

    ]

    var body: some View {

        // Main Vertical Layout

        VStack{

        // ===========================
        // Header Section
        // ===========================

        HeaderView(

        personName: "History")

        // ===========================
        // Screen Title
        // ===========================

        Text( "Previous Orders" )

            .font(.title)

        // ===========================
        // Order History List
        // ===========================

            List{

        // Loop through array indexes

            ForEach(

                0..<orderHistory.count,

                id:\.self

        ){

            index in

        // === Display Name + Order ====

           Text("\(personNames[index]) - \(orderHistory[index])")

                }

            }

        }

    }

}


// Preview Section

#Preview{

    HistoryView()

}
