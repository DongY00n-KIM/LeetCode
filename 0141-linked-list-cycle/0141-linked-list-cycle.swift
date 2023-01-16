/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slowPointer : ListNode? = head
        var fastPointer : ListNode? = slowPointer?.next
        
        while fastPointer?.next?.next != nil{
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
            
            if fastPointer === slowPointer{
                return true
            }
        }
        
        return false 
    }
}