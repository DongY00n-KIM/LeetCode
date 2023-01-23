class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var endOfArr = m + n - 1
        var m2 = m - 1
        var n2 = n - 1 
        
       while endOfArr >= 0 && n2 >= 0{
           if m2 >= 0 && nums1[m2] >= nums2[n2]{
               nums1[endOfArr] = nums1[m2]
               m2 -= 1
           }
           else{
               nums1[endOfArr] = nums2[n2]
               n2 -= 1
           }
           endOfArr -= 1
       } 
    }
}