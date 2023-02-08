class Solution {
    private var original: [Int]
    private var shuffled: [Int]
    private var generator = SystemRandomNumberGenerator()

    init(_ nums: [Int]) {
        original = nums
        shuffled = nums
    }
    
    /** Resets the array to its original configuration and return it. */
    func reset() -> [Int] {
        shuffled = original
        return original
    }
    
    /** Returns a random shuffling of the array. */
    func shuffle() -> [Int] {
        for i in 0..<shuffled.count {
            let randomIndex = Int.random(in: i..<shuffled.count, using: &generator)
            if i != randomIndex {
                shuffled.swapAt(i, randomIndex)
            }
        }
        return shuffled
    }
}