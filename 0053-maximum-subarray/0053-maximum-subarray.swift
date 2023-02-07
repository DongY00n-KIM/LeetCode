class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count < 2{
            return nums[0]
        }
        
        var tempSum : Int = 0
        var maxSum : Int = nums[0]
        
        for num in nums{
            tempSum += num
            maxSum = max(maxSum, tempSum)
            tempSum = max(tempSum, 0)
        }
        return maxSum
    }
}