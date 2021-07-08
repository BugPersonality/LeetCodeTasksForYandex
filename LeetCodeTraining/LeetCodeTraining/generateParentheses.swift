import Foundation

var answ: [String] = []

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        answ.removeAll()
        if (n == 1) {
            return ["()"]
        }
        dfs(currStr: "", closeCount: 0, count: n)
        return answ
    }
}

func dfs (currStr: String, closeCount: Int, count: Int) {
    if (closeCount == 0 && count == 0) {
        answ.append(currStr)
        return
    }

    if (count > 0) {
        var tempStr = currStr + "("
        dfs(currStr: tempStr, closeCount: closeCount + 1, count: count - 1)
    }

    if (closeCount > 0) {
        var tempStr = currStr + ")"
        dfs(currStr: tempStr, closeCount: closeCount - 1, count: count)
    }
}
