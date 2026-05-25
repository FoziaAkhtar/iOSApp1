
// =================================
//  OrderView.swift
//  iOSApp1
// =================================
//  Created by Fozia
// ================================

import SwiftUI

struct OrderView: View {
    
    // Array to store team members names
    let personNames = ["Fozia", "Ali", "Sarah", "John"]
    
    // Array to store main coffee orders
    let mainOrders = [
        "Large Double Double",
        "Ice Capp",
        "French Vanilla",
        "Medium Coffee"
    ]
    
    // Array to store extra items for each orders
    let itemLists = [
        ["Coffee", "2 Cream", "2 Sugar", "Bagel"],
        ["Ice Capp", "Chocolate Dip Donut"],
        ["French Vanilla", "Hash Brown"],
        ["Medium Coffee", "Milk", "Muffin"]
    ]
    
    // selected order index ( current )
    let index: Int
    
    var body: some View {
        
        // main vertical layout
        VStack(spacing: 20) {
            
            
            // Header View displaying Person name
            HeaderView(personName: personNames[index])
            
            
            // coffee Icon / Red Color
            Image(systemName: "cup.and.saucer.fill")
                .font(.system(size: 80))
                .foregroundColor(.red)
            
            // Order Title
            Text("Order:")
                .font(.headline)
            
            // Display Main Orders
            Text(mainOrders[index])
                .font(.title2)
                .fontWeight(.bold)
            
            // Section Title for extra items
            Text("Items Wanted")
                .font(.headline)
            
            // Display List of Items
            VStack(spacing: 10) {
                ForEach(itemLists[index], id: \.self) { item in
                    Text(item)
                        .font(.body)
                }
            }

            // Button to save orders
            Button("Save Order") {
                
            // Prints Message in Consol
            print("Order saved")
                
        }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(12)
            
            // Pushes Content Upward
            Spacer()
        }
        
        // Add Padding around the screen
        .padding()
    }
}

// SwiftUI preview
#Preview {
    OrderView(index: 0)
}
