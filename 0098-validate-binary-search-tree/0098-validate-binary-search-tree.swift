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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return validator(root,  Int.min, Int.max)
        
    }
    
    func validator(_ root : TreeNode?, _ leftVal : Int, _ rightVal : Int) -> Bool {
        if root == nil{
            return true
        }
        
        if root!.val <= leftVal || root!.val >= rightVal{
            return false
        }
        return validator(root?.left, leftVal, root!.val) && validator(root?.right, root!.val, rightVal)
    }
}