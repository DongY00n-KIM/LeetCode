
class Solution {
    var arr = [Int]()

    init(_ nums: [Int]) {
        self.arr = nums
    }
    
    func reset() -> [Int] {
        return self.arr
    }
    
    func shuffle() -> [Int] {
        var shuffleArr = [Int]()
        var size : Int = 0
        
        while(size < arr.count){
            if let randElement = arr.randomElement(){
                if !shuffleArr.contains(randElement){
                    shuffleArr.append(randElement)
                    size += 1
                }
            }
        }
        
        return shuffleArr
    }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(nums)
 * let ret_1: [Int] = obj.reset()
 * let ret_2: [Int] = obj.shuffle()
 */