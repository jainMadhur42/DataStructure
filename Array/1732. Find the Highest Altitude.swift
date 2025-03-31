// https://leetcode.com/problems/find-the-highest-altitude/description/


class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var max = 0
        var sum = 0

        for num in gain {
            sum += num
            if sum > max {
                max = sum
            }
        }
        return max
    }
}
