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
        var res : TreeNode? = helperFunc(nums, 0, nums.count - 1)
        return res
    }
    func helperFunc(_ nums:[Int], _ leftPointer : Int, _ rightPointer : Int) -> TreeNode?{
        if leftPointer > rightPointer {
            return nil
        }
        
        var m : Int = (rightPointer + leftPointer) / 2
        var root : TreeNode? = TreeNode(nums[m])
        
        root?.left = helperFunc(nums, leftPointer, m - 1)
        root?.right = helperFunc(nums, m + 1, rightPointer)
        return root 
    }
}