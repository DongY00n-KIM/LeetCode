class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var res : Int = -1
        var minElem : Int = nums[0]
        for i in 1..<nums.count{
            let temp = nums[i] - minElem
            if temp > 0{
                res = max(temp, res)
            }
            else if minElem > nums[i]{
                minElem = min(minElem, nums[i])
            }
        }
        return res
    }
}