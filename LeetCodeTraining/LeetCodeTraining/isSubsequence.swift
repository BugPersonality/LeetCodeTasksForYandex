import Foundation


func isSubsequence(_ s: String, _ t: String) -> Bool {
    if (s == t) {
        return true
    } else if ((s.count == t.count && s != t) || (s.count > t.count))  {
        return false
    }
    
    var indexS: Int = 0
    var indexT: Int = 0
    
    while (indexT < t.count && indexS < s.count) {
        if (s[indexS] == t[indexT]) {
            indexS += 1
        }
        indexT += 1
    }
    
    return indexS == s.count
}


extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
