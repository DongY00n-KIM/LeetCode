class Solution {
    // func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //     /*
    //         approach 1 : brutal force, using nested for loop.
    //         approach 2 : using map to find target - nums[i] = x
    //         approach 3 : using two pointer, so if the left number + right number > target, right pointer will be move down, and if left number + right number < target, left pointer will be moving to up
    //     */
        
    //     var returnArr : [Int] = []
    //     var l : Int = 0
    //     var r : Int = nums.count - 1

    //     while(l < r){
    //         if(nums[l] + nums[r] < target){
    //             l += 1
    //         }
    //         else if(nums[l] + nums[r] > target){
    //             r -= 1
    //         }
    //         else{
    //             returnArr.append(l)
    //             returnArr.append(r)
    //             return returnArr
    //         }
    //     }
    //     return returnArr
    // }
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict : [Int:Int] = [:]

        for (i, num) in nums.enumerated() {
            if let j = dict[target - num] { return [j, i] }
            dict[num] = i
        }

        return []
    }

}