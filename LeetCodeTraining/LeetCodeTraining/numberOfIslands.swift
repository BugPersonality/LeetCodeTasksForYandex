import Foundation

class Solution1 {
    func numIslands(_ grid: [[Character]]) -> Int {
        
        let m = grid.count
        let n = grid[0].count
        
        var visited = Array(repeating: Array(repeating: false, count: n), count: m)
        var queue: [coordinate<Int, Int>] = []
        var count = 0
        
        for i in 0..<m {
            for j in 0..<grid[i].count {
                if (!visited[i][j] && grid[i][j] == "1") {
                    count += 1
                    queue.append(coordinate(x: i, y: j))
                    while !queue.isEmpty {
                        let curr = queue.removeFirst()
                        
                        if canMoveUp(x: curr.x, y: curr.y, grid: grid, visited: visited) {
                            visited[curr.x - 1][curr.y] = true
                            queue.append(coordinate(x: curr.x - 1, y: curr.y))
                        }
                        if canMoveDown(x: curr.x, y: curr.y, grid: grid, visited: visited) {
                            visited[curr.x + 1][curr.y] = true
                            queue.append(coordinate(x: curr.x + 1, y: curr.y))
                        }
                        if canMoveLeft(x: curr.x, y: curr.y, grid: grid, visited: visited) {
                            visited[curr.x][curr.y - 1] = true
                            queue.append(coordinate(x: curr.x, y: curr.y - 1))
                        }
                        if canMoveRight(x: curr.x, y: curr.y, grid: grid, visited: visited) {
                            visited[curr.x][curr.y + 1] = true
                            queue.append(coordinate(x: curr.x, y: curr.y + 1))
                        }
                        
                    }
                }
            }
        }
        
        return count
    }
    
    func canMoveUp(x: Int, y: Int, grid: [[Character]], visited: [[Bool]]) -> Bool {
        guard x > 0 else {
            return false
        }
        if !visited[x - 1][y] && grid[x - 1][y] == "1" {
            return true
        } else {
            return false
        }
    }
    
    func canMoveDown(x: Int, y: Int, grid: [[Character]], visited: [[Bool]]) -> Bool {
        guard x < grid.count - 1 else {
            return false
        }
        if !visited[x + 1][y] && grid[x + 1][y] == "1" {
            return true
        } else {
            return false
        }
    }
    
    func canMoveRight(x: Int, y: Int, grid: [[Character]], visited: [[Bool]]) -> Bool {
        guard y < grid[0].count - 1 else {
            return false
        }
        if !visited[x][y + 1] && grid[x][y + 1] == "1" {
            return true
        } else {
            return false
        }
    }
    
    func canMoveLeft(x: Int, y: Int, grid: [[Character]], visited: [[Bool]]) -> Bool {
        guard y > 0 else {
            return false
        }
        if !visited[x][y - 1] && grid[x][y - 1] == "1" {
            return true
        } else {
            return false
        }
    }
}

struct coordinate<T, V> {
    var x: T
    var y: V
}

//let s = Solution1()
//s.numIslands([
//    ["1","1","1","1","0"],
//    ["1","1","0","1","0"],
//    ["1","1","0","0","0"],
//    ["0","0","0","0","0"]
//  ])
