
// https://leetcode.com/problems/search-insert-position/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        var start = 0
        var end = nums.count - 1
        var mid = start + (end - start)/2
        while(start <= end) {
            if nums[mid] < target {
                start = mid + 1
            } else {
                end = mid - 1
            }
            mid = start + (end - start)/2

        }
        return start

    }
}
