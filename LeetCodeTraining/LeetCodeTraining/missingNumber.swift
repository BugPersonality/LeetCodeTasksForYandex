import Foundation


func missingNumber(_ nums: [Int]) -> Int {
    var sumInArray: Int = 0
    
    for i in nums {
        sumInArray += i
    }
    
    return getSumFromZeroToN(n: nums.count) - sumInArray
}

func getSumFromZeroToN(n: Int) -> Int {
    return ((2 + (n - 1)) * n) / 2
}
