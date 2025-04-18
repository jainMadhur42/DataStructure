
// https://leetcode.com/problems/online-stock-span/
// https://www.youtube.com/watch?v=01vBuZyMfqk&list=PLGjplNEQ1it-kmrbYmzQfLWjVOFj6JpEV&index=3

class StockSpanner {

    var prices: [Int] = []
    var stack: [Int] = []

    init() {
        
    }
    
    func next(_ price: Int) -> Int {
        var ans = 0
        prices.append(price)
        while stack.count > 0 && prices[stack.last!] <= prices[prices.count - 1] {
            stack.popLast()
        }
        if stack.isEmpty {
            ans = prices.count
        } else {
            ans = (prices.count - 1) - stack.last!
        }
        stack.append(prices.count - 1)
        return ans
    }
}
