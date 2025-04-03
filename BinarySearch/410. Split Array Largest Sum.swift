// https://leetcode.com/problems/split-array-largest-sum/

// Search space will start from max number in array to sum of array. 

class Solution {

    func isValid(_ mid: Int, _ nums: [Int], _ k: Int) -> Bool {
        var count = 1
        var currentSum = 0

        for num in nums {
             if currentSum + num > mid {
                count += 1
                currentSum = num    
                if count > k {
                    return false 
                }
            } else {
                currentSum += num
            }
        }
        return true
    }

    func splitArray(_ nums: [Int], _ k: Int) -> Int {
        var sum = 0
        for num in nums {
            sum += num
        }
        var start = nums.max()!
        var end = sum
        var mid = start + (end - start)/2
        while(start < end) {
            if isValid(mid, nums, k) {                
                end = mid
            } else {
                start = mid + 1
            }
             mid = start + (end - start)/2
        }
        return start
    }
}
