
// https://leetcode.com/problems/next-greater-element-ii/

class Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var stack: [Int] = []
        var n = nums.count
        var finalArray = nums + nums
        var i = 2 * n - 1
        var ans = Array(repeating: -1, count: n)

        while i >= 0 { 
            while !stack.isEmpty && nums[stack.last!] <= nums[i%n] {
                stack.popLast()
            }
            ans[i%n] = stack.isEmpty ? -1 : nums[stack.last!]
            stack.append(i%n)
            i -= 1
        }
        return ans
    }
}
