/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        helperFunc(root?.left, root?.right)
    }
    
    func helperFunc(_ rightNode : TreeNode?, _ leftNode : TreeNode?) -> Bool{
        if leftNode == nil && rightNode == nil{
            return true
        }
        if leftNode == nil || rightNode == nil{
            return false
        }
        if leftNode!.val != rightNode!.val {
            return false
        }
        
        return helperFunc(leftNode?.left, rightNode?.right) && helperFunc(leftNode?.right, rightNode?.left)
    }
}