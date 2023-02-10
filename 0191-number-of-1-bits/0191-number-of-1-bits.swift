class Solution {
    func hammingWeight(_ n: Int) -> Int {
        let binaryStr = String(n, radix: 2)
        var result : Int = 0
        
        for char in binaryStr{
            if char == "1"{
                result += 1
            }
        }
        
        return result
    }
}