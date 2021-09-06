import Foundation

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    let s1count = s1.count
    let s2count = s2.count
    
    if s1count > s2count {
        return false
    }
    
    var firstHash = getAlphabeticEmptyHash()
    var secondHash = getAlphabeticEmptyHash()
    
    modifyHashByString(hash: &firstHash, string: s1)
    modifyHashByString(hash: &secondHash, string: s2[0..<s1count])
    
    guard firstHash != secondHash else { return true }
    
    var left = 1
    var right = s1count + 1
    
    while right <= s2count {
        modifyHashByString(hash: &secondHash, string: s2[left..<right])
        guard firstHash != secondHash else { return true }
        left += 1
        right += 1
    }
    
    return false
}

func getAlphabeticEmptyHash() -> [String : Int] {
    var map: [String : Int] = [:]
    for char in "abcdefghijklmnopqrstuvwxyz" {
        map[String(char)] = 0
    }
    return map
}

func modifyHashByString(hash: inout [String : Int], string: String) {
    for char in "abcdefghijklmnopqrstuvwxyz" {
        hash[String(char)] = 0
    }
    for char in string {
        hash[String(char)]! += 1
    }
}


extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
         return String(self[start...])
    }
}


