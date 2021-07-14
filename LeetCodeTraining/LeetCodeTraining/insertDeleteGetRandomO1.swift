import Foundation


class RandomizedSet {

    var sett: [Int:Int] = [:]
    
    var arr: [Int] = []
    
    init() {  }
    
    func insert(_ val: Int) -> Bool {
        if let index = sett[val] {
            return false
        } else {
            sett[val] = arr.count
            arr.append(val)
            return true
        }
    }
    
    func remove(_ val: Int) -> Bool {
        guard let index = sett[val] else {
            return false
        }
        
        let last = arr[arr.count - 1]
        sett[last] = index
        arr[index] = last
        arr.removeLast()
        
        sett[val] = nil
        return true
    }
    
    func getRandom() -> Int {
        return arr[Int.random(in: 0..<arr.count)]
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
