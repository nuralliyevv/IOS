import Foundation

func celsiusToFahrenheit(_ c: Double) -> Double { c * 9/5 + 32 }
func celsiusToKelvin(_ c: Double) -> Double { c + 273.15 }
func fahrenheitToCelsius(_ f: Double) -> Double { (f - 32) * 5/9 }
func kelvinToCelsius(_ k: Double) -> Double { k - 273.15 }

print("Enter temperature value: ", terminator: "")
if let input = readLine(), let value = Double(input) {
    print("Enter unit (C, F, K): ", terminator: "")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            print("\(value)°C = \(celsiusToFahrenheit(value))°F, \(celsiusToKelvin(value))K")
        case "F":
            let c = fahrenheitToCelsius(value)
            print("\(value)°F = \(c)°C, \(celsiusToKelvin(c))K")
        case "K":
            let c = kelvinToCelsius(value)
            print("\(value)K = \(c)°C, \(celsiusToFahrenheit(c))°F")
        default:
            print("Invalid unit")
        }
    }
}