// https://leetcode.com/problems/find-all-duplicates-in-an-array/description/

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var map: [Int:Int] = [:]
        var ans: [Int] = []
        for num in nums {
            map[num] =  (map[num] ?? 0) + 1
        }

        for (key,value) in map {
           // print("key \(key) and value \(value)")
            if value > 1 {
                ans.append(key)
            }
        }
        return ans
    }
}
