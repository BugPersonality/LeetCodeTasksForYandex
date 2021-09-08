import Foundation

func maxArea(_ height: [Int]) -> Int {
    guard height.count > 2 else  { return min(height[1], height[0]) }
    guard height.count > 0 else { return 0 }
    
    var square = -1 //(height.count - 1) * min(height[0], height[height.count - 1])
    print(square)
    var leftPointer = 0
    var rightPointer = height.count - 1
    
    while leftPointer < rightPointer {
        if height[leftPointer] > height[rightPointer] {
            square = max(square, (rightPointer - leftPointer) * height[leftPointer])
            rightPointer -= 1
        } else {
            square = max(square, (rightPointer - leftPointer) * height[rightPointer])
            leftPointer += 1
        }
    }
    
    return square
}
