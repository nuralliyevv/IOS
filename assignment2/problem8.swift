import Foundation

func isPalindrome(_ text: String) -> Bool {
    let cleaned = text.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

print(isPalindrome("A man a plan a canal Panama"))