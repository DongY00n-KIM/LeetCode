class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var res : Int = 0
        var n : Int = 0
        
        n = x ^ y 
        
        while n > 0{
            if n & 1 == 1{
                res += 1
            }
            n = n >> 1
        }
        return res
    }
}