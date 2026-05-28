
// =================================
//  OrderView.swift
//  iOSApp1
// =================================
//  Created by Fozia
// ================================

import SwiftUI

struct OrderView: View {

    let personNames = [

        "Fozia",
        "Ali",
        "Sarah",
        "John"

    ]

    let coffeeOrders = [

        "Large Double Double",
        "Ice Capp",
        "French Vanilla",
        "Medium Coffee"

    ]

    let items = [

        ["Coffee","2 Cream","2 Sugar","Bagel"],

        ["Ice Capp","Chocolate Donut"],

        ["French Vanilla","Hash Brown"],

        ["Medium Coffee","Milk","Muffin"]

    ]

    let index:Int

    @State private var selectedItems:[String] = []

    @State private var countdown = 3

    @State private var showCountdown = false


    var body: some View {

        VStack(spacing:20){

            HeaderView(

                personName:

                personNames[index]

            )

            Image(systemName:

                "cup.and.saucer.fill"

            )

            .font(.system(size:80))

            .foregroundColor(.red)


            Text("Order")

                .font(.headline)

            Text(

                coffeeOrders[index]

            )

            .font(.title2)

            .bold()


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


            if showCountdown{

                Text(

                "Saving Order In \(countdown)"

                )

            }


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

        .padding()

    }


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

#Preview{

    OrderView(index:0)

}
