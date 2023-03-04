class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var s = Int.max
        var l = Int.max
        
        for n in nums{
            if n <= s{
                s = n
            }
            else if n <= l{
                l = n
            }
            else{
                return true
            }
        }
        return false
    }
}