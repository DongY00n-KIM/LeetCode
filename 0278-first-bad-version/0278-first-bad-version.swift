/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var l : Int = 1
        var r : Int = n
        
        while l < r {
            var m = l + (r - l) / 2
            
            if isBadVersion(m){
                r = m 
            }
            else{
                l = m + 1
            }
        }
        return l
    }
}