import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    guard !strs.isEmpty, !(strs.count == 1) else {
        return [strs]
    }
    
    var dict: [Int:[String]] = [:]
    
    for i in strs {
        
        let sortedString = String(i.sorted())
        
        if var arr = dict[sortedString.hashValue] {
            arr.append(i)
            dict[sortedString.hashValue] = arr
        } else {
            dict[sortedString.hashValue] = [i]
        }
    }
    
    var result: [[String]] = []
    
    for (_, value) in dict {
        result.append(value)
    }
    
    return result
}
