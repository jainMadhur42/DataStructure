
// https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/

class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var charachters = Array(s)
        var toRemove: Set<Int> =  []
        var stack: [Int] = []


        for (i, ch) in charachters.enumerated() {
            if ch == "(" {
                stack.append(i)
            } else if ch == ")" {
                if stack.isEmpty {
                    toRemove.insert(i)
                } else {
                    stack.popLast()
                }
            }
        }

        for i in stack {
            toRemove.insert(i)
        }

        var result = ""
        for (i, char) in charachters.enumerated() {
            if !toRemove.contains(i) {
                result.append(char)
            }
        }
        return result
    }
}
