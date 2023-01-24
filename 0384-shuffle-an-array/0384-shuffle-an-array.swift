
class Solution {
    private var originArr = [Int]()

    init(_ nums: [Int]) {
        self.originArr = nums
    }
    
    func reset() -> [Int] {
        return originArr
    }
    
    func shuffle() -> [Int] {
        var shuffleArr = [Int]()
        while shuffleArr.count < originArr.count {
            if let randomNum = originArr.randomElement(){
                if !shuffleArr.contains(randomNum){
                    shuffleArr.append(randomNum)
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