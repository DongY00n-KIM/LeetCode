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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var nodeList : [Int] = []
        var temp : ListNode? = head
        
        while temp != nil{
            nodeList.append(temp!.val)
            temp = temp!.next
        }
        
        return nodeList == nodeList.reversed()
    }
}