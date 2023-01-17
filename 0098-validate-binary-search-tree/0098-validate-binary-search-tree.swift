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
        return valid(root, leftVal : Int.min, rightVal : Int.max)
        
    }
    func valid(_ node : TreeNode?, leftVal : Int, rightVal : Int) -> Bool{
        if node == nil{
            return true
        }
        if node!.val >= rightVal || node!.val <= leftVal{
            return false
        }
       return valid(node?.left, leftVal : leftVal, rightVal : node!.val) && valid(node?.right, leftVal : node!.val, rightVal : rightVal)
    }
}