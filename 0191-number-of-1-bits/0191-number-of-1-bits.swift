class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var result : Int = 0
        var n = n
        
        while n > 0{
            result += n % 2
            n = n >> 1
        }
        return result
    }
}