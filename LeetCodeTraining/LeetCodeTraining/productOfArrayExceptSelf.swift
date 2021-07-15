import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var left: [Int] = []
    var right: [Int] = []
    
    var compLeft = 1;
    var compRight = 1;
    
    var size = nums.count
    
    for i in 0..<size {
        compLeft *= nums[i]
        compRight *= nums[size - 1 - i]
        left.append(compLeft)
        right.append(compRight)
    }
    
    right = right.reversed()
   
    var out: [Int] = []
    
    out.append(right[1])
    for i in 1..<size - 1 {
        out.append(left[i - 1] * right[i + 1])
    }
    out.append(left[size - 2])
    
    return out
}

