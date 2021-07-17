import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
    guard !nums.isEmpty else {
        return []
    }
    
    var out: [String] = []
    var start: Int = nums[0];
    var prev = start;
    
    for i in 1..<nums.count {
        if (nums[i] > prev + 1) {
            addTwo(start, prev, &out)
            start = nums[i]
            prev = start
        } else {
            prev = nums[i]
        }
    }
    
    addTwo(start, prev, &out)
    
    return out
}


func addTwo(_ num1: Int, _ num2: Int, _ arr: inout [String]) {
    if (num1 != num2) {
        arr.append("\(num1)->\(num2)")
    } else {
        arr.append("\(num1)")
    }
}
