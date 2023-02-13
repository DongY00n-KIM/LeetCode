class Solution {
    func reverseBits(_ n: Int) -> Int {
        
        var n = n
        var bitN = 0
        
        for _ in 1...32{
            bitN = (bitN << 1) | (n & 1)
            n >>= 1
        }
    
        return bitN
    }
}