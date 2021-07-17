import Foundation


func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []

    for i in tokens {
        if Int(i) == nil {
            let f = stack.removeLast()
            let s = stack.removeLast()
            
            stack.append(i.signAndItsOperands(a: s, b: f))
        } else {
            stack.append(Int(i)!)
        }
    }

    return stack.popLast()!
}


extension String {
    func signAndItsOperands(a: Int, b: Int) -> Int {
        if self == "+" {
            return a + b
        } else if self == "-"{
            return a - b
        } else if self == "*" {
            return a * b
        } else {
            return a / b
        }
    }
}
