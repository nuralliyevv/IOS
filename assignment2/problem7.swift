let students: [String: Int] = [
    "Alice": 90,
    "Bob": 75,
    "Charlie": 60,
    "Diana": 85
]

let scores = Array(students.values)
let avg = scores.reduce(0, +) / scores.count
let maxScore = scores.max() ?? 0
let minScore = scores.min() ?? 0

print("Average: \(avg), Max: \(maxScore), Min: \(minScore)")

for (name, score) in students {
    let status = score >= avg ? "above average" : "below average"
    print("\(name): \(score) (\(status))")
}