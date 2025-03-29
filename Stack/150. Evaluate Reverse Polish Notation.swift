// https://leetcode.com/problems/evaluate-reverse-polish-notation/description/

class Solution {
   
    func calculate(_ num1: Int, _ num2: Int, _ token: String) -> Int {  
        if token == "+" { return num1 + num2 }
        if token == "*" { return num1 * num2 }
        if token == "-" { return num2 - num1 }
        if token == "/" { return num2 / num1 }
        return 0
    }


    func evalRPN(_ tokens: [String]) -> Int {
        var result = 0
        var stack: [String] = []

        for token in tokens {
            if Int(token) != nil {
                stack.append(token)
            } else {                
            if stack.count >= 2 {
                var num1 = Int(stack.last!) != nil ? Int(stack.popLast()!) : 0
                var num2 = Int(stack.last!) != nil ? Int(stack.popLast()!) : 0
                var ans = "\(calculate(num1!, num2!, token))"
                stack.append(ans)
               // print("num1 \(num1) , num2 \(num2), token \(token) ans \(ans) stack \(stack)")
            }
        }
       // print(stack)
    }
        
        return Int(stack[0])!
    }
}
