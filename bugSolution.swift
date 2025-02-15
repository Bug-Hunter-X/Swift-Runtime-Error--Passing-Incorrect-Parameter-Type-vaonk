func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

func calculateAreaSafely(width: String?, height: String?) -> Double? {
    guard let width = Double(width ?? ""), let height = Double(height ?? "") else {
        return nil
    }
    return width * height
}

let area1 = calculateArea(width: 10, height: 20) // Correct usage

let area2 = calculateAreaSafely(width: "10", height: "20") // Safe usage with string input
print(area2 ?? 0) // Print the area or 0 if error

let area3 = calculateAreaSafely(width: "10", height: "hello") // Safe handling of invalid input
print(area3 ?? 0) // Prints 0 because of error handling