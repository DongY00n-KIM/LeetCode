class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let nCounts = nums.count
        let expectedRes = ((nCounts + 1) * nCounts) / 2
        let res = expectedRes - nums.reduce(0,+)
        
        return res
    }
}