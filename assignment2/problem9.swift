func add(_ a: Double, _ b: Double) -> Double { a + b }
func sub(_ a: Double, _ b: Double) -> Double { a - b }
func mul(_ a: Double, _ b: Double) -> Double { a * b }
func div(_ a: Double, _ b: Double) -> Double? { b == 0 ? nil : a / b }

while true {
    print("Enter first number (or 'q' to quit): ", terminator: "")
    guard let input = readLine(), input != "q", let a = Double(input) else { break }
    
    print("Enter second number: ", terminator: "")
    guard let b = Double(readLine() ?? "") else { continue }
    
    print("Choose operation (+, -, *, /): ", terminator: "")
    if let op = readLine() {
        switch op {
        case "+": print("Result: \(add(a,b))")
        case "-": print("Result: \(sub(a,b))")
        case "*": print("Result: \(mul(a,b))")
        case "/":
            if let result = div(a,b) {
                print("Result: \(result)")
            } else {
                print("Error: division by zero")
            }
        default:
            print("Unknown operation")
        }
    }
}