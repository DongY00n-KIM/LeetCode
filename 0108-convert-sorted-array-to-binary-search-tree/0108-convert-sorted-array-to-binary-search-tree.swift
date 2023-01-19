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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        var res : TreeNode? = helperFunc(0, nums.count - 1, nums)
        return res
    }
    
    func helperFunc(_ l : Int, _ r : Int, _ nums : [Int]) -> TreeNode?{
        if l > r{
            return nil
        }
        var m : Int = (l + r) / 2
        var root : TreeNode? = TreeNode(nums[m])
        
        root?.left = helperFunc(l, m - 1, nums)
        root?.right = helperFunc(m + 1, r, nums)
        
        return root
    }
}