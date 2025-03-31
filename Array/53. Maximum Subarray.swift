
// https://leetcode.com/problems/maximum-subarray/


class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var prefixSum = 0
        var maxNum = Int.min
        for num in nums {
            prefixSum += num
            maxNum = max(maxNum, prefixSum)
            if prefixSum < 0 { prefixSum = 0}
        }
        return maxNum
    }
}
