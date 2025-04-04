
// https://leetcode.com/problems/plus-one/description/

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var ldigits = digits
        var i = ldigits.count - 1
        var carry = 0
         
        var sum = ldigits[i] + 1
        if sum < 10 {
            ldigits[i] = sum
            return ldigits
        } else {
            ldigits[i] = 0
            carry = 1
            i -= 1
            while i >= 0 {
                sum = ldigits[i] + carry
                if sum >= 10 {
                    ldigits[i] = 0
                    carry = 1
                } else {
                    ldigits[i] = sum
                    carry = 0
                }
                i -= 1
            }
            if carry == 1 {
                ldigits = [1] + ldigits
            }
            return ldigits
        }
    }
}



/* Java Solution 
class Solution {
    public int[] plusOne(int[] digits) {
        
        for(int i = digits.length-1;i>=0;i--) {
            if(digits[i] < 9) {
                ++digits[i];
                return digits;
            }
            digits[i] = 0;
        }
        int[] ans = new int[digits.length + 1];
         ans[0] = 1;
        return ans;
    }
}
*/
