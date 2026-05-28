
// =================================
//  OrderView.swift
//  iOSApp1
// =================================
//  Created by Fozia
// ================================

import SwiftUI

struct OrderView: View {
    
    // =============================
    // Names of team members
    // =============================
    
    let personNames = [

        "Fozia",
        "Ali",
        "Ahmad",
        "Abbas"

    ]

    // ==================================
    // Main coffee order for each person
    // ==================================
    
    let coffeeOrders = [

        "Large Double Double",
        "Ice Capp",
        "French Vanilla",
        "Medium Coffee"

    ]
    
    // ==================================
    // Extra items for each order
    // ==================================

    let items = [

        ["Coffee","2 Cream","2 Sugar","Bagel"],

        ["Ice Capp","Chocolate Donut"],

        ["French Vanilla","Hash Brown"],

        ["Medium Coffee","Milk","Muffin"]

    ]
    
    // ==================================
    // Stores current page number
    // ==================================

    let index:Int
    
    
    // ====== Stores selected items ====
    @State private var selectedItems:[String] = []
    
    
    // ====== Countdown Variables ========
    
    @State private var countdown = 3

    @State private var showCountdown = false


    var body: some View {

        // Main Vertical layout
        
        VStack(spacing:20){

            // ===========================
            // Header Section
            // ===========================
            
            HeaderView(

                // == Shoe person name ==
                
                personName:

                personNames[index]

            )

            // ==========================
            // coffee icon
            // ==========================
            
            Image(systemName:

                "cup.and.saucer.fill"

            )

            .font(.system(size:80))

            .foregroundColor(.red)

            // =============================
            // Order Title
            // =============================

            Text("Order")

                .font(.headline)
            
            // =============================
            // Show Mian Order
            // =============================

            Text(

                coffeeOrders[index]

            )

            .font(.title2)

            .bold()


            // =============================
            // Items Selection
            // =============================
            
            Text("Select Items")

                .font(.headline)

            // =============================
            // Display Items list
            // =============================

            ForEach(

                items[index],

                id:\.self

            ){ item in

                Button{
                    
                    // main Item pressed
                    selectItem(item)

                }

                label:{

                    HStack{

                        Text(item)

                        Spacer()

                        // ============================
                        // Show checkmark when selected
                        // ============================
                        
                        if selectedItems.contains(item){

                            Image(

                                systemName:

                                "checkmark.circle.fill"

                            )

                        }

                    }

                    .padding()
                    

                    // ==================================
                    // changes Color if Selected
                    // ==================================
                    
                    .foregroundColor(

                        selectedItems.contains(item)

                        ?

                        .green

                        :

                        .black

                    )

                }

            }


            // ===============================
            // Countdown text
            // ===============================
            
            if showCountdown{

                Text(

                "Saving Order In \(countdown)"

                )

            }


            // ===============================
            // Save button
            // ===============================
            
            Button("Save Order"){

                startCountdown()

            }

            .padding()

            .frame(maxWidth:.infinity)

            .background(Color.red)

            .foregroundColor(.white)

            .cornerRadius(10)

            Spacer()

        }
        
        // Add screen padding

        .padding()

    }

    // ================================
    // Function Selecting item
    // ================================

    func selectItem(_ item:String){

        if selectedItems.contains(item){

            selectedItems.removeAll{

                $0 == item

            }

        }

        else{

            selectedItems.append(item)

        }

    }

    // ===============================
    // Countdown Function
    // ===============================

    func startCountdown(){
        

        // === Reset CountDown ===
        countdown = 3

        showCountdown = true

        Timer.scheduledTimer(

            withTimeInterval:1,

            repeats:true

        ){

            timer in

            // == Reduce countdown every second ==
            
            countdown -= 1

            if countdown == 0{

                // ===== STOP TIMER =====
                timer.invalidate()

                showCountdown = false

                print("Saved")

            }

        }

    }

}

// Preview Section

#Preview{

    OrderView(index:0)

}
