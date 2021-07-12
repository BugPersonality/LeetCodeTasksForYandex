import Foundation

func rotate(_ matrix: inout [[Int]]) {
    let size: Int = matrix.count
    var left = 0
    var right = size - 1
    
    while (left < right) {
        for i in 0..<right-left {
            let top = left
            let botton = right
            
            let safeLeftTop = matrix[top][left + i]
            
            // left top = left botton
            matrix[top][left + i] = matrix[botton - i][left]
            
            // left botton = right botton
            matrix[botton - i][left] = matrix[botton][right - i]
            
            // right botton = top right
            matrix[botton][right - i] = matrix[top + i][right]
            
            // top right = safeLeftTop
            matrix[top + i][right] = safeLeftTop
        }
        right -= 1
        left += 1
    }
}
