// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/description/

class Solution {
    func removeDuplicates(_ s: String, _ k: Int) -> String {
        var characters: [Character] = Array(s)
        var stack: [String] = []
        var ans = ""
    
        for char in characters {
            //print("Stack \(stack) Stack last \(stack.last) char \(char)")
            if stack.isEmpty {
                stack.append("\(char)")
            } else if stack.last!.contains(char) {
                stack.append(stack.popLast()! + "\(char)")
                if stack.last!.count == k {
                    stack.popLast()
                }
            } else {
                stack.append("\(char)")
            }
        }
    while !stack.isEmpty {
        ans += stack.popLast()!
    }
    return String(ans.reversed())
    }
}
