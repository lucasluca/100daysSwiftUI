import SwiftUI


var greeting = "Hello, playground"


enum LengthMeasurement: String {
    case meter = "m"
    case kilometer
    case feet
    case yards
    case miles
}

let test = LengthMeasurement.meter

let lengthMeasurementDic = [
    "meter": (simbol: "m", novo: true),
    "kilometer": (simbol: "Km", novo: true)
]

lengthMeasurementDic.keys


for measurement in lengthMeasurementDic {
    print(measurement)
}
