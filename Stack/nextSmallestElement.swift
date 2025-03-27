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
