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
        //slow and faster pointer.
        var slowPointer : ListNode? = head
        var fasterPointer : ListNode? = slowPointer?.next
        
        while fasterPointer?.next?.next != nil{
            slowPointer = slowPointer?.next
            fasterPointer = fasterPointer?.next?.next
            
            if fasterPointer === slowPointer{
                return true
            }
        }
            
        return false
    }
}