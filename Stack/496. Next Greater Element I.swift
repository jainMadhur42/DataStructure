
//https://leetcode.com/problems/next-greater-element-i/

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var mapping = [Int: Int]()
        var stack: [Int] = []
        var i = nums2.count - 1
        var ans: [Int] = []

        while i >= 0 {
            while !stack.isEmpty && stack.last! < nums2[i] {
                stack.popLast()!
            }
            var num = stack.isEmpty ? -1 : stack.last!
            stack.append(nums2[i])
            mapping[nums2[i]] = num
            i -= 1
        }
        for num in nums1 {
            ans.append(mapping[num]!)
        }
        return ans
    }
}
