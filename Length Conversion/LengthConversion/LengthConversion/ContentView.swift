//
//  ContentView.swift
//  LengthConversion
//
//  Created by Lucas Mendes on 27/07/21.
//

import SwiftUI

struct LenghtUnity: Identifiable {
   let name: String
   let simbol: String
   var id: String { simbol }
}

let conversionDictionary: [String: UnitLength] = [
    "m": UnitLength.meters,
    "Km": UnitLength.kilometers,
    "ft": UnitLength.feet,
    "yd": UnitLength.yards,
    "mi": UnitLength.miles
]

let lengthOptions: [LenghtUnity] = [
    LenghtUnity(name: "Meter", simbol: "m" ),
    LenghtUnity(name: "Kilometer", simbol: "Km"),
    LenghtUnity(name: "Feet", simbol: "ft"),
    LenghtUnity(name: "Yards", simbol: "yd" ),
    LenghtUnity(name: "Miles", simbol: "mi")
]

struct ContentView: View {
    
    @State private var inputUnitType = "m"
    @State private var outPutUnityType = "m"
    @State private var inputValue = ""
    
    func convertToMeters(value: Measurement<UnitLength>) -> Measurement<UnitLength> {
        return value.converted(to: UnitLength.meters)
    }
    
    func convertToActualUnity(value: Measurement<UnitLength>) -> Measurement<UnitLength> {
        return value.converted(to: conversionDictionary[outPutUnityType] ?? UnitLength.meters)
    }
    
    var finalConversionResult: Double  {
        let safeTypedValue = Double(inputValue) ?? 0.0
        let convertedValueToInputUnit = Measurement(value: safeTypedValue, unit: conversionDictionary[inputUnitType] ?? UnitLength.meters)
        let valueConvertedToMeters = convertToMeters(value: convertedValueToInputUnit)
        let valueConvertedToOutputUnit = convertToActualUnity(value: valueConvertedToMeters)
        return valueConvertedToOutputUnit.value
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Choose input unity")) {
                    Picker("Input unit", selection: $inputUnitType) {
                        ForEach(lengthOptions, id: \.simbol) { lengthOption in
                            Text("\(lengthOption.name) - (\(lengthOption.simbol))")
                        }
                    }
                    
                }
                Section(header: Text("Choose output unity")) {
                    Picker("Input unit", selection: $outPutUnityType) {
                        ForEach(lengthOptions, id: \.simbol) { lengthOption in
                            Text("\(lengthOption.name) - (\(lengthOption.simbol))")
                        }
                    }
                    
                }
                Section(header: Text("Insert the value to be converted")) {
                    TextField("Insert a value", text: $inputValue)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Final conversion result")) {
                    Text("\(finalConversionResult,specifier: "%.2f") \(outPutUnityType)")
                }
            }
            .navigationBarTitle("Conversion App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
