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
        return validCheck(root, leftVal : Int.min, rightVal : Int.max)
    }
    
    func validCheck(_ root : TreeNode?, leftVal : Int, rightVal : Int) -> Bool{
        if root == nil{
            return true
        }
        if root!.val <= leftVal || root!.val >= rightVal{
            return false
        }
        
        return validCheck(root?.left, leftVal : leftVal, rightVal : root!.val) && validCheck(root?.right, leftVal : root!.val, rightVal : rightVal)
    }
}