import Foundation


func sortedSquares(_ nums: [Int]) -> [Int] {
    
    // Runtime -> 540 ms, Memory -> 15.9 MB
    // var array = nums.map { $0 * $0 }
    // array = array.sorted()
    // return array
    
    
    // Runtime -> 336 ms, Memory -> 15.5 MB
    var array = nums
    var size = nums.count
    var begin = 0
    var end = size - 1
    var index = size - 1
    
    while (index >= 0) {
        if (nums[begin] * nums[begin] > nums[end] * nums[end]) {
            array[index] = nums[begin] * nums[begin]
            begin += 1
        } else {
            array[index] = nums[end] * nums[end]
            end -= 1
        }
        index -= 1
    }
    
    return array
}

