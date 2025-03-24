// https://leetcode.com/problems/valid-parentheses/


class Solution {
    func isValid(_ s: String) -> Bool {
        let characters = Array(s)
        var stack: [Character] = []

        for ch in characters {
            if ch == "{" || ch == "(" || ch == "[" {
                stack.append(ch)
            } else {
                var lastChar = stack.last
                if (ch == "}" && lastChar == "{") || (ch == ")" && lastChar == "(") || (ch == "]" && lastChar == "[") {
                    stack.popLast()
                }else {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}
