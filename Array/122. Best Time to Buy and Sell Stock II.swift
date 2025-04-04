// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0]
        var i = 1
        var profit = 0
        var tp = 0
        while (i < prices.count) {
            if prices[i] - buy < 0 {
                tp += profit
                buy = prices[i]
                profit = 0
            } else if prices[i] - buy > profit {
                profit = prices[i] - buy
            } else {
                tp += profit
                profit = 0
                buy = prices[i]
            }
            i += 1
        }
        tp += profit
        return tp
    }
}
