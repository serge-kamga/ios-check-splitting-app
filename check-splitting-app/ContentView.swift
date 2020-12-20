//
//  ContentView.swift
//  check-splitting-app
//
//  Created by Serge Kamga on 12/19/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10,15,20,25,0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<20) { number in
                            Text("\(number) people")
                        }
                    }
                }
                
            }.navigationBarTitle("Split the bill")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
