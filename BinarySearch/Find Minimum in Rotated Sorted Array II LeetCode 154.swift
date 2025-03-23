
//https://leetcode.com/problems/find-minimum-in-rotated-sorted-array-ii/description/

func findMin(_ nums: [Int]) -> Int {
        var start = 0
        var end = nums.count - 1

        while(start < end) {
            var mid = start + (end - start)/2
            if nums[mid] > nums[end] {
                start = mid + 1
            } else if nums[mid] < nums[end] {
                end = mid
            } else {
                end -= 1
            }
        }
        return nums[start]
    }
