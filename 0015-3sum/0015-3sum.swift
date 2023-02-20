class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        //target = 0 
        if nums.count < 3{
            return []
        }
        var res = Set<[Int]>()
        let nums = nums.sorted()
        
        //-4 -1 -1 0 1 2 
        for i in 0..<nums.count {
            var l = i + 1
            var r = nums.count - 1
            
            if i > 0 && nums[i] == nums[i - 1]{
                continue
            }
            
            while l < r{
                var target = nums[i] + nums[l] + nums[r]
                if target == 0 {
                    res.insert([nums[i], nums[l], nums[r]])
                    l += 1
                }
                else if target < 0 {
                    l += 1
                }
                else {
                    r -= 1
                }
            }
        }
        return Array(res)
    }
}