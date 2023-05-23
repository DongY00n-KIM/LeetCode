/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func connect(_ root: Node?) -> Node? {
        var curr = root
        var stack : [Node] = []
        
        while curr != nil || !stack.isEmpty {
            while let node = curr{
                stack.append(node)
                curr = node.left
            }
            let node = stack.removeLast()
            if node.next == nil {
                node.next = stack.last?.right
            }
            node.right?.next = node.next?.left
            curr = node.right
            
        }
        
        return root
        
    }
}