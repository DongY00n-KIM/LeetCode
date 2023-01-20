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
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var curr : ListNode? = head
        var res : ListNode? = nil
        var next : ListNode? = nil
        
        while curr != nil{
            next = curr!.next
            curr!.next = res
            res = curr
            curr = next
        }
        
        return res
    }
}