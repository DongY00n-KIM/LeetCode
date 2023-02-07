class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 2{
            return nums[0]
        }
        var prev : Int = 0
        var curr : Int = 0
        
        for num in nums{
            let temp = max(prev + num, curr)
            prev = curr
            curr = temp
        }
        return curr
    }
}