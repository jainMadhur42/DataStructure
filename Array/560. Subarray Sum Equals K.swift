
// https://leetcode.com/problems/subarray-sum-equals-k/description/

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var map: [Int: Int] = [0: 1]
        var totalCount = 0
        var sum = 0
        for num in nums {
            sum += num
            totalCount += map[sum - k] ?? 0
            map[sum] = (map[sum] ?? 0) + 1
        }
        return totalCount
    }
}
