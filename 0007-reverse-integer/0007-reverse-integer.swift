class Solution {
    func reverse(_ x: Int) -> Int {
        var returnX : Int = 0
        var x = x

        while x != 0{
            returnX *= 10
            let temp : Int = x % 10
            returnX += temp 
            x /= 10
        }
        return returnX < Int32.min || returnX > Int32.max ? 0 : returnX
    }
}


