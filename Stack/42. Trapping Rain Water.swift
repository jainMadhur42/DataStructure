
// https://leetcode.com/problems/trapping-rain-water/

class Solution {

    func nextGreaterElement(_ nums1: [Int]) -> [Int] {
        var max = 0
        //var stack: [Int] = []
        var i = nums1.count - 1
        var ans: [Int] = Array(repeating: -1, count: nums1.count)

        while i >= 0 {
            if nums1[i] >= max {
                 ans[i] = max
                 max =  nums1[i]
            } else {
                ans[i] = max
            }
            
            i -= 1
        }
        
        return ans
    }

    func prevGreaterElement(_ nums1: [Int]) -> [Int] {
        
        var max = 0
        var i = 0
        var ans: [Int] = Array(repeating: -1, count: nums1.count)

        while i < nums1.count {
            if nums1[i] >= max {
                 ans[i] = max
                 max =  nums1[i]
            } else {
                ans[i] = max
            }
            i += 1
        }
        
        return ans
    }

    func trap(_ height: [Int]) -> Int {
        let nextGreater = nextGreaterElement(height)
        let prevGreater = prevGreaterElement(height)
        print(nextGreater)
        print(prevGreater)
        var sum = 0
        for (i, h) in height.enumerated() {
            let min = min(nextGreater[i], prevGreater[i])
            if min > h {
                sum +=  min - h
            } 
        }
        return sum
    }
}
