// https://leetcode.com/problems/largest-rectangle-in-histogram/

class Solution {

   func nextSmallestElement(_ heights: [Int]) -> [Int] {
        var stack = [-1]
        var ans: [Int] = []
        var i = heights.count - 1
        while i >= 0 {
            while stack.last! != -1 && heights[stack.last!] >= heights[i] {
               stack.popLast()!
            }
            ans.append(stack.last!)
            stack.append(i)
            i -= 1
        }
        return ans.reversed()
    }

    func prevSmallestElement(_ heights: [Int]) -> [Int] {
        var stack = [-1]
        var ans: [Int] = []
        var i = 0

        while i <= heights.count - 1 {
            while stack.last! != -1 && heights[stack.last!] >= heights[i] {
               stack.popLast()!
            }
            ans.append(stack.last!)
            stack.append(i)
            i += 1
        }
        return ans
    }

    func largestRectangleArea(_ heights: [Int]) -> Int {
         var n = heights.count
         var next = nextSmallestElement(heights)
         var prev = prevSmallestElement(heights)
         var area = -1

         for (i, l) in heights.enumerated() {
            if next[i] == -1 {
                next[i] = n
            }
            let b = next[i] - prev[i] - 1
            area = max(area, l * b)
         } 
        return area
    }
}
