class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 2{
            return nums[0]
        }
        
        var maxMoney = Array(repeating: 0, count: nums.count)
        
        maxMoney[0] = nums[0]
        maxMoney[1] = max(maxMoney[0], nums[1])
        
        for i in 2..<nums.count{
           maxMoney[i] = max(maxMoney[i - 1], maxMoney[i - 2] + nums[i])
        }
        
        return maxMoney[nums.count - 1]
    }
}