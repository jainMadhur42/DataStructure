// https://leetcode.com/problems/two-sum/

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var map = [Int: Int]()
        for (index, num) in nums.enumerated() {
            map[num] = index
        }
        for (index, num) in nums.enumerated() {
            var numberToFind = target - num
            if map[numberToFind] != nil && index != map[numberToFind] {
                return [index,  map[numberToFind]!]
            }
        }
        
        return []
    }
}
