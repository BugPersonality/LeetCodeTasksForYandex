import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 1 else {
        if nums.count == 0 {
            return [-1, -1]
        }
        if nums[0] == target {
            return [0, 0]
        } else {
            return [-1, -1]
        }
    }
    
    var indexS = 0
    var indexE = nums.count - 1
    var answ = pair<Int, Int>()

    while (indexE >= indexS) {
        if let first = answ.first, let second = answ.second {
            break
        }
        if nums[indexE] == target {
            answ.second = indexE
        } else {
            indexE -= 1
        }
        if nums[indexS] == target {
            answ.first = indexS
        } else {
            indexS += 1
        }
    }

    if (answ.first == nil && answ.second == nil) {
        return [-1, -1]
    } else {
        return [answ.first == nil ? answ.second! : answ.first!, answ.second == nil ? answ.first! : answ.second!]
    }
   
}


struct pair<TYPE1, TYPE2>{
    var first: TYPE1?
    var second: TYPE2?
}
