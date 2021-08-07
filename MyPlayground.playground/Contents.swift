import SwiftUI


var greeting = "Hello, playground"



enum LengthMeasurement: String {
    case meter
    case kilometer
    case feet
    case yards
    case miles
}

let test = LengthMeasurement.meter

print(test.rawValue)
