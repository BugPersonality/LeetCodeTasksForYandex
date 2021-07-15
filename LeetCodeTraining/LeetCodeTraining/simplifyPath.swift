import  Foundation

func simplifyPath(_ path: String) -> String {

    let arr = path.split(separator: "/")
    var stack = Stack<String>()

    for i in arr {
        if (i == "..") {
            _ = stack.pop()
        } else if (i != "." && i != "..") {
            stack.push(String(i))
        }
    }

    if (stack.isEmpty) {
        return "/"
    } else {
        return "/" + stack.array.joined(separator: "/")
    }
}

struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    init () { }
    
    init(fuckYourSelfVariable: Element) {
        array = [fuckYourSelfVariable]
    }
    
    mutating func push(_ element: Element) {
        array.append(element)
    }

    mutating func pop() -> Element? {
        return array.popLast()
    }

    func peek() -> Element? {
        return array.last
    }
    
    var isEmpty: Bool {
      return array.isEmpty
    }

    var count: Int {
      return array.count
    }
}
