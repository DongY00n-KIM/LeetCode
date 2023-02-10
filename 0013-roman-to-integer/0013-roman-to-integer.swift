class Solution {
    func romanToInt(_ s: String) -> Int {
        let symbols: [Character : Int] = ["I":1, "V":5, "X":10,"L":50,"C":100,"D":500,"M":1000]
        
        var result = 0
        var prev = 0
        
        for char in s.reversed(){
            let curr = symbols[char]!
            if curr >= prev{
                result += curr
            }
            else{
                result -= curr
            }
            prev = curr
        }
        return result
    }
}