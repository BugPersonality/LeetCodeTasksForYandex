import Foundation

/**
* Definition for singly-linked list.
* public class ListNode {
*     public var val: Int
*     public var next: ListNode?
*     public init() { self.val = 0; self.next = nil; }
*     public init(_ val: Int) { self.val = val; self.next = nil; }
*     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
* }
*/

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var array: [Int] = []
    var curr: ListNode? = head
    
    while (true) {
        array.append(curr!.val)
        curr = curr!.next
        if curr == nil {
            break
        }
    }
    
    if array.count == 1 || array.count == 0 {
        return nil
    }
  
    array.remove(at: array.count - n)
    
    let forReturn: ListNode? = ListNode(array[0])
    var current = forReturn
    
    for index in 1..<array.count {
        current!.next = ListNode(array[index])
        current = current!.next
    }
    
    return forReturn
}

