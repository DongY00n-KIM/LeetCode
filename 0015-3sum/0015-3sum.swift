class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        //target = 0 
        var res : [[Int]] = []
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
                    res.append([nums[i], nums[l], nums[r]])
                    while l < r && nums[l] == nums[l + 1]{
                        l += 1
                    }
                    while l < r && nums[r] == nums[r - 1]{
                        r -= 1
                    }
                    l += 1
                    r -= 1
                }
                else if target < 0 {
                    l += 1
                }
                else {
                    r -= 1
                }
            }
        }
        return res
    }
}