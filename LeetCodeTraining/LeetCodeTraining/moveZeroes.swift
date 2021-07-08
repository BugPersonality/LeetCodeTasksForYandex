import Foundation

func moveZeroes(_ nums: inout [Int]) {
    if (nums.count == 1) {
        return
    }
    
    var deadIndex = 0;
    
    for i in 0..<nums.count {
        if nums[i] == 0 {
            deadIndex = i
            break
        }
    }
    
    for i in deadIndex..<nums.count {
        if (nums[i] != 0) {
            nums[deadIndex] = nums[i]
            deadIndex += 1
        }
    }
    
    for i in deadIndex..<nums.count {
        nums[i] = 0
    }
}
