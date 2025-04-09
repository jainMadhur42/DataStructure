
//https://leetcode.com/problems/3sum

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var sortedArray = nums.sorted(by: <)
        var ans: [[Int]] = []
        var index = 0
        while index < sortedArray.count - 2 {
            var left = index + 1
            var right = sortedArray.count - 1
            while(left < right) {
                let sum = sortedArray[index] + sortedArray[left] + sortedArray[right]
                if sum == 0 {
                    if !ans.contains([sortedArray[index], sortedArray[left] , sortedArray[right]]) {
                        ans.append([sortedArray[index], sortedArray[left] , sortedArray[right]])    
                    }
                    right -= 1
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
            index += 1
        }
        return ans;
    }
}
