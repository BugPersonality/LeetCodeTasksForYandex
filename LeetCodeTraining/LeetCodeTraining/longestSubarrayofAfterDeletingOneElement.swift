import Foundation

func longestSubarray(_ nums: [Int]) -> Int {
    guard nums.contains(0) else {
        return nums.count - 1
    }

    guard nums.contains(1) else {
        return 0
    }

    var count: Int = 0
    var arr: [Int] = []
    var startIndex = 0

    while (nums[startIndex] == 0 && startIndex < nums.count - 1) {
        arr.append(0)
        startIndex += 1
    }

    for i in startIndex..<nums.count {
        if (i == nums.count - 1 && nums[i] != 0) {
            count += 1
            arr.append(count)
        }
        if (nums[i] != 0) {
            count += 1
        } else {
            arr.append(count)
            arr.append(0)
            count = 0
        }
    }

    var max: Int = -1

    for i in 1..<arr.count - 1 {
        if (arr[i] == 0) {
            let tempMax = arr[i - 1] + arr[i + 1]
            if (tempMax > max) {
                max = tempMax
            }
        }
    }

    guard max != -1 else {
        return 1
    }

    return max
}
