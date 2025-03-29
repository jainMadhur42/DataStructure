// https://leetcode.com/problems/daily-temperatures/description/


class Solution {
  
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack: [Int] = []
        var i = temperatures.count - 1
        var ans: [Int] = Array(repeating: -1, count: temperatures.count)

        while i >= 0 {
            while !stack.isEmpty && temperatures[stack.last!] <= temperatures[i] {
                stack.popLast()!
            }
            ans[i] = stack.isEmpty ? 0 : stack.last! - i
            stack.append(i)
            i -= 1
        }
        return ans
    }
}
