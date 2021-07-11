import Foundation

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}

func isPalindrome(_ head: ListNode?) -> Bool {
    guard let h = head else {
         return false
    }
    
    var list: [Int] = []
    
    var curr = head
    
    while (curr != nil) {
        list.append(curr!.val)
        curr = curr!.next
    }
    
    var reversedList: [Int] = list.reversed()
    
    return reversedList == list
    
//         Solution with reversed linked list (77 / 85 test cases passed) [1,1,2,1] -> true
//         guard let h = head else {
//             return false
//         }
    
//         var prev: ListNode? = nil
//         var curr: ListNode? = head
    
//         while (curr != nil) {
//             var nextNode = curr!.next
//             curr!.next = prev
//             prev = curr
//             curr = nextNode
//         }
    
//         var newH = head

//         while (prev != nil && newH != nil) {
//             if (prev!.val != newH!.val) {
//                 print(prev!.val)
//                 print(newH!.val)
//                 return false
//             }
//             prev = prev!.next
//             newH = newH!.next
//         }
//         return true
}
