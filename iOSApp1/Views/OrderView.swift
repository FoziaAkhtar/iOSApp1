

// =================================
//  OrderView.swift
//  iOSApp1
// =================================
//  Created by Fozia on 2026-05-22
//

import SwiftUI

struct OrderView: View {
    
    let personNames = ["Fozia", "Ali", "Sarah", "John"]
    
    let mainOrders = [
        "Large Double Double",
        "Ice Capp",
        "French Vanilla",
        "Medium Coffee"
    ]
    
    let itemLists = [
        ["Coffee", "2 Cream", "2 Sugar", "Bagel"],
        ["Ice Capp", "Chocolate Dip Donut"],
        ["French Vanilla", "Hash Brown"],
        ["Medium Coffee", "Milk", "Muffin"]
    ]
    
    let index: Int
    
    var body: some View {
        VStack(spacing: 20) {
            
            HeaderView(personName: personNames[index])
            
            Image(systemName: "cup.and.saucer.fill")
                .font(.system(size: 80))
                .foregroundColor(.red)
            
            Text("Order:")
                .font(.headline)
            
            Text(mainOrders[index])
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Items Wanted")
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 8) {
                ForEach(itemLists[index], id: \.self) { item in
                    Text("• \(item)")
                        .font(.body)
                }
            }
            
            Button("Save Order") {
                print("Order saved")
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(12)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OrderView(index: 0)
}
