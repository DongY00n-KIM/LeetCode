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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil{
            return []
        }
        var q : [TreeNode?] = [root] 
        var res : [[Int]] = []
        
        while !q.isEmpty{
            var count = q.count
            var temp : [Int] = []
            for _ in 0..<count{
                if let node = q.removeFirst(){
                    temp.append(node.val)
                    if let l = node.left {q.append(l)}
                    if let r = node.right {q.append(r)}
                }
            }
        res.append(temp)
        }
    return res
    }
}