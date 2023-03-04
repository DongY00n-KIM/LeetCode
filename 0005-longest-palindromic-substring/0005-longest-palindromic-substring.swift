class Solution {
    func longestPalindrome(_ s: String) -> String {
        var res = [Character]()
        var resLen = 0
        var s = Array(s)
        for i in 0..<s.count {
            var l = i
            var r = i
            while r < s.count && l >= 0 && s[l] == s[r] {
                if (r - l + 1) > resLen {
                    res = Array(s[l...r])
                    resLen = r - l + 1
                }
                r += 1
                l -= 1
            }
            
            l = i 
            r = i + 1
            while r < s.count && l >= 0 && s[l] == s[r] {
                if (r - l + 1) > resLen {
                    res = Array(s[l...r])
                    resLen = r - l + 1
                }
                r += 1
                l -= 1
            }
        }
        return String(res)
    }
}