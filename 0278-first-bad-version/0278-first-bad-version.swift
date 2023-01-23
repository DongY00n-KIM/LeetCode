/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var l : Int = 1
        var r : Int = n
        var badVer : Int = n
        
        while l <= r {
            var m = (l + r) / 2
            
            if isBadVersion(m){
                badVer = m
                r = m - 1
            }
            else{
                l = m + 1
            }
        }
        return badVer
    }
}