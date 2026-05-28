
// =================================
// OrderView.swift
// iOSApp1
// =================================

import SwiftUI

struct OrderView: View {

    // === Team Member Names ===

    let personNames = [

        "Fozia",
        "Ali",
        "Ahmad",
        "Abbas"

    ]

    // === Coffee Orders ====

    let coffeeOrders = [

        "Large Double Double",
        "Ice Capp",
        "French Vanilla",
        "Medium Coffee"

    ]

    // === Extra Items =====

    let items = [

        ["Coffee","2 Cream","2 Sugar","Bagel"],

        ["Ice Capp","Chocolate Donut"],

        ["French Vanilla","Hash Brown"],

        ["Medium Coffee","Milk","Muffin"]

    ]

    // === Current Page Number ===

    let index:Int

    // === Selected Items ====

    @State private var selectedItems:[String] = []

    // === Countdown ====

    @State private var countdown = 3

    @State private var showCountdown = false


    var body: some View {

        VStack(spacing:20){

            // ===============================
            // Header
            // ===============================

            HeaderView(

                personName:

                personNames[index]

            )

            // ===============================
            // Coffee Icon
            // ===============================

            Image(systemName:

                "cup.and.saucer.fill"

            )

            .font(.system(size:80))

            .foregroundColor(.red)


            // ================================
            // Main Order
            // ================================

            Text("Order")

                .font(.headline)

            Text(

                coffeeOrders[index]

            )

            .font(.title2)

            .bold()


            // =================================
            // Item Selection
            // =================================

            Text("Select Items")

                .font(.headline)


            ForEach(

                items[index],

                id:\.self

            ){ item in

                Button{

                    selectItem(item)

                }

                label:{

                    HStack{

                        Text(item)

                        Spacer()

                        if selectedItems.contains(item){

                            Image(

                                systemName:

                                "checkmark.circle.fill"

                            )

                        }

                    }

                    .padding()

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
            // Countdown
            // ===============================

            if showCountdown{

                Text(

                    "Saving Order In \(countdown)"

                )

            }


            // =================================
            // Save Button
            // =================================

            Button("Save Order"){

                startCountdown()

            }

            .padding()

            .frame(maxWidth:.infinity)

            .background(Color.red)

            .foregroundColor(.white)

            .cornerRadius(10)


    //--------------------------------
    // Navigation Buttons
    //--------------------------------

            HStack{
                
                // Previous Button
                
                if index > 0 {
                    
                    NavigationLink(
                        
                        destination:
                            
                            OrderView(
                                
                                index: index - 1
                                
                            )
                        
                    ){
                        
                        Text("Previous")
                        
                            .padding()
                        
                            .frame(width:120)
                        
                            .background(Color.gray)
                        
                            .foregroundColor(.white)
                        
                            .cornerRadius(10)
                        
                    }
                    
                }
                
                
              // ====== Next Button ========
                
                if index < personNames.count - 1 {
                    
                    NavigationLink(
                        
                        destination:
                            
                            OrderView(
                                
                                index: index + 1
                                
                            )
                        
                    ){
                        
                        Text("Next")
                        
                            .padding()
                        
                            .frame(width:120)
                        
                            .background(Color.red)
                        
                            .foregroundColor(.white)
                        
                            .cornerRadius(10)
                        
                    }
                    
                }
                
                else {
                    
                    // Last person goes to Rating Page
                    
                    NavigationLink(
                        
                        destination:
                            
                            RatingView()
                        
                    ){
                        
                        Text("Go To Rating")
                        
                            .padding()
                        
                            .frame(width:140)
                        
                            .background(Color.red)
                        
                            .foregroundColor(.white)
                        
                            .cornerRadius(10)
                        
                }
                    
            }
                
        }

            Spacer()

        }

        .padding()

    }


    // ==============================
    // Select Item Function
    // ==============================

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

        countdown = 3

        showCountdown = true

        Timer.scheduledTimer(

            withTimeInterval:1,

            repeats:true

        ){

            timer in

            countdown -= 1

            if countdown == 0{

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
