

// https://leetcode.com/problems/product-of-array-except-self/description/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var multiplication = 0
        var zeroCount = 0
        for num in nums {
            if num != 0 { 
                if multiplication == 0 { multiplication = 1 }
                multiplication *= num 
            } 
            else { zeroCount += 1 }
        }
        var ans: [Int] = []
        for num in nums {
            if zeroCount >= 2 { ans.append(0) }
            else if num == 0 { 
                ans.append(multiplication) 
            } else if num != 0 && zeroCount >= 1 {
                ans.append(0) 
            } else {
                ans.append(multiplication/num) 
            }
        }
        return ans
    }
}
