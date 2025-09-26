import Foundation

print("Enter a sentence: ")
if let sentence = readLine() {
    let words = sentence
        .lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .filter { !$0.isEmpty }
    
    var freq: [String: Int] = [:]
    for word in words {
        freq[word, default: 0] += 1
    }
    
    for (word, count) in freq {
        print("\(word): \(count)")
    }
}