
func findRedundantBracket(_ string: String) -> Bool {
    var characters = Array(string)
    var stack: [Character] = []
    for ch in characters {
        if ch == "(" || ch == "+" || ch == "-" || ch == "*" || ch == "/" {
            stack.append(ch)
        } else if ch == ")" {
            var isRedundant = true
            while stack.last != "(" {
                var top = stack.last
                if top == "+" || top == "-" || top == "*" || top == "/" {
                    isRedundant = false
                }
                stack.popLast()
            }
            if isRedundant {
                return true
            }
            stack.popLast()
        }
    }
    return false
}

print(findRedundantBracket("((a+b))"))
print(findRedundantBracket("(a*(b+c))"))
