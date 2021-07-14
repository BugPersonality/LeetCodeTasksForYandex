import Foundation

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var dict: [Int:Int] = [0:1]
    var sum = 0
    var count = 0
    
    for i in 0..<nums.count {
        sum += nums[i]
        if let value = dict[sum - k] {
            count += value
        }
        
        if var sukaSum = dict[sum] {
            sukaSum += 1
            dict[sum] = sukaSum
        } else {
            dict[sum] = 1
        }
        
    }
    
    return count
}
