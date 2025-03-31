
// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

class Solution {

    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
         var left = 0
    var right = numbers.count - 1
    
    while left < right {
        let sum = numbers[left] + numbers[right]
        
        if sum == target {
            return [left + 1, right + 1]
        } else if sum < target {
            left += 1  // Move left pointer to the right to increase the sum
        } else {
            right -= 1  // Move right pointer to the left to decrease the sum
        }
    }
    return []
    }
}
