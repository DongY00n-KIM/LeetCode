class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2{
            return 0
        }
        
        var minVal : Int = prices[0]
        var maxProfit = 0
        
        for i in 1..<prices.count{
            if prices[i] < minVal{
                minVal = prices[i]
            }
            else{
                maxProfit = max(maxProfit, prices[i] - minVal)
            }
        }
        return maxProfit
        
    }
}