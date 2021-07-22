import Foundation

class Solution2 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard validate(lists) else {
            return nil
        }
        var array: [Int] = []
        for list in lists {
            var current = list
            while current != nil {
                array.append(current?.val ?? 1)
                current = current?.next
            }
        }
        array = array.sorted()
        let answ = ListNode(array[0])
        var curr = answ
        for index in 1..<array.count {
            curr.next = ListNode(array[index])
            curr = curr.next ?? ListNode(array[index])
        }
        return answ
    }
    
    func validate(_ lists: [ListNode?]) -> Bool {
        guard !lists.isEmpty else {
            return false
        }
        var emptyListCount = 0
        for list in lists {
            if list == nil {
                emptyListCount += 1
            }
        }
        if emptyListCount == lists.count {
            return false
        }
        return true
    }
}
