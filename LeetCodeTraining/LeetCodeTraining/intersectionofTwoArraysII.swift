import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    guard !nums1.isEmpty, !nums2.isEmpty else {
        return []
    }
    
    var dict: [Int:Int] = [:]

    for i in nums1 {
        if let val = dict[i] {
            dict[i] = val + 1
        } else {
            dict[i] = 1
        }
    }
    
    var result: [Int] = []
    
    for i in nums2 {
        if let val = dict[i] {
            result.append(i)
            if val > 1 {
                dict[i] = val - 1
            } else {
                dict[i] = nil
            }
        }
    }
    
    return result
}

