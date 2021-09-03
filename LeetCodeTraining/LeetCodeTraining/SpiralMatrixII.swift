import Foundation

func generateMatrix(_ n: Int) -> [[Int]] {
    if n == 1 {
        return [[1]]
    }
    
    var answer = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    var left = 0
    var right = n - 1
    var top = 0
    var bottom = n - 1
    var tempDigit = 1
    
    while true {
        for index in left...right {
            answer[top][index] = tempDigit
            tempDigit += 1
        }
        guard tempDigit <= Int(pow(Double(n), 2)) else { break }
        top += 1
        for index in top...bottom {
            answer[index][right] = tempDigit
            tempDigit += 1
        }
        guard tempDigit <= Int(pow(Double(n), 2)) else { break }
        right -= 1
        for index in (left...right).reversed() {
            answer[bottom][index] = tempDigit
            tempDigit += 1
        }
        guard tempDigit <= Int(pow(Double(n), 2)) else { break }
        bottom -= 1
        for index in (top...bottom).reversed() {
            answer[index][left] = tempDigit
            tempDigit += 1
        }
        guard tempDigit <= Int(pow(Double(n), 2)) else { break }
        left += 1
    }
    
    return answer
}



