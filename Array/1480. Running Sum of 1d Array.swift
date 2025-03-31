

// https://leetcode.com/problems/running-sum-of-1d-array/
// This is called the prefix sum problem
// https://medium.com/@maityamit/prefix-sum-summary-with-practice-questions-sheet-1d-2d-on-leetcode-83c8deb4f713

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var sum = 0

        for num in nums {
            sum += num
            result.append(sum)
        }
        return result
    }
}
