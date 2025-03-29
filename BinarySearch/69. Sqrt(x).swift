

// https://leetcode.com/problems/sqrtx/?envType=study-plan-v2&envId=binary-search

class Solution {
    func mySqrt(_ x: Int) -> Int {
        var start = 1
        var end = x
        var mid = start + (end - start)/2
        var ans = 0

        while start <= end {
            if mid * mid == x { 
                return mid 
            } else if mid * mid > x { 
                end = mid - 1
            } else {
                ans = mid
                start = mid + 1
            }
            mid = start + (end - start)/2
        }
        return ans
    }
    
}
