
// https://leetcode.com/problems/move-zeroes/description/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var insertPos = 0

        // First pass: move all non-zero elements to the front
        for num in nums where num != 0 {
             nums[insertPos] = num
             insertPos += 1
         }

    // Second pass: fill the rest with zeroes
        while insertPos < nums.count {
             nums[insertPos] = 0
             insertPos += 1
        }
    }
}
