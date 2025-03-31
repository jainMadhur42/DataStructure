
// https://leetcode.com/problems/find-subarrays-with-equal-sum/

class Solution {
    func findSubarrays(_ nums: [Int]) -> Bool {
        var seenSums = Set<Int>()
    
        for i in 0..<(nums.count - 1) {
           let sum = nums[i] + nums[i + 1]
           if seenSums.contains(sum) {
                return true
            }
            seenSums.insert(sum)
        }
        return false
    }
}
