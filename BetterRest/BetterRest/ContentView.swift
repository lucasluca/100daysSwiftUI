//
//  ContentView.swift
//  BetterRest
//
//  Created by Lucas Mendes on 24/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date()


    var body: some View {
        VStack {
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%.2g") hours")
            }
            DatePicker("Enter a date", selection: $wakeUp, in: Date()..., displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
