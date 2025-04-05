// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxNumber = 0
        var min = Int.max
        for i in 0..<prices.count {
            if prices[i] < min {
                min = prices[i]
            } else if prices[i] > min {
                maxNumber = max(prices[i] - min, maxNumber)
            }
        }
        return maxNumber
    }
}
