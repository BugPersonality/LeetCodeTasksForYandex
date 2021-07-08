import Foundation

func isPalindrome(_ s: String) -> Bool {
        
    var news = ""
    
    for symbl in s {
        if (Character(String(symbl)).asciiValue! >= 97 && Character(String(symbl)).asciiValue! <= 122 ) {
            news += String(symbl)
        }
        if (Character(String(symbl)).asciiValue! >= 48 && Character(String(symbl)).asciiValue! <= 57 ) {
            news += String(symbl)
        }
        if (Character(String(symbl)).asciiValue! >= 65 && Character(String(symbl)).asciiValue! <= 90 ) {
            news += String(symbl)
        }
    }
    news = news.lowercased()
    
    if (news == String(news.reversed())) {
        return true
    } else {
        return false
    }
}
