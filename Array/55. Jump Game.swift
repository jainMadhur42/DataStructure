// https://leetcode.com/problems/jump-game/description/

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var maxNumber = nums[0]
        for i in 1..<nums.count {
            if i <= maxNumber {
                maxNumber = max(maxNumber, nums[i] + i)
            }
        }
        return maxNumber >= nums.count - 1
    }
}
