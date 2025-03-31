

// https://leetcode.com/problems/maximum-gap/description/

class Solution {
    func maximumGap(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var i = sorted.count - 1
        var maxDiff = 0
        while i > 0 {
            maxDiff = max(maxDiff, (sorted[i] - sorted[i - 1]))
            i -= 1
        }
        return maxDiff
    }
}
