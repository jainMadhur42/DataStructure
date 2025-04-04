// https://leetcode.com/problems/find-pivot-index/

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var leftSum = 0
        var totalSum = nums.reduce(0, +)
        for (index, num) in nums.enumerated() {
            if leftSum == totalSum - leftSum - num {
                return index
            } 
            leftSum += num
        }
        return -1
    }
}
