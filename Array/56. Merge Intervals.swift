// https://leetcode.com/problems/merge-intervals/

class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {

        guard intervals.count > 1 else { return intervals }
        var sortedInterval = intervals.sorted { $0[0] < $1[0] }

        var merged: [[Int]] = [] 
        for interval in sortedInterval {
            if merged.isEmpty || merged.last![1] < interval[0] {
                merged.append(interval)
            } else {
                merged[merged.count - 1][1] = max(merged.last![1], interval[1])
            }
        }
        return merged
    }
    
}
