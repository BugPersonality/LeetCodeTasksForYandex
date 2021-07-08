import Foundation

// Definition for singly-linked list.
public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
//         1 -> 2 -> 3 -> 4
        
//         1 <- 2 <- 3 <- 4
        
//         4 -> 3 -> 2 -> 1
        
        var previouseNode: ListNode? = nil
        var currentNode: ListNode? = head
        
        while (currentNode != nil) {
            var nextNode: ListNode? = currentNode!.next
            currentNode!.next = previouseNode
            previouseNode = currentNode
            currentNode = nextNode
        }
        
        return previouseNode
    }
}
