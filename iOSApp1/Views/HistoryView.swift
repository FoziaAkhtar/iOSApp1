// ========================
//  HistoryView.swift
//  iOSApp1
// =========================
//  Created by Fozia
// =========================

import SwiftUI

struct HistoryView: View {

    // ===========================
    // Stores previous orders
    // ===========================
    
    let orderHistory = [

        "Large Double Double",

        "Ice Capp",

        "French Vanilla",

        "Medium Coffee"

    ]

    var body: some View {
        
        // === Main vertical Layout ===

        VStack{

            // ========================
            // Header Section
           // =========================
            
            HeaderView(

                // == Shows page title ==
                personName:

                "History"

            )
            
            // =========================
            // Screen Title
            // =========================
            
            Text(

                // =====================
                // Order History List
                // =====================
                
                "Previous Orders"

            )

            .font(.title)

            List{

                ForEach(

                    orderHistory,

                    id:\.self

                ){

                    order in

                    // ==== Display Each order ====
                    Text(order)

                }

            }

        }

    }

}
// Preview Section

#Preview{

    HistoryView()

}
