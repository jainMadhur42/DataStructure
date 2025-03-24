

func insertAtBottom(_ stack: inout [Int], _ number: Int)  {
    if stack.isEmpty {
        stack.append(number)
        return
    }
    
    var element = stack.popLast()
    insertAtBottom(&stack, number)
    stack.append(element!)
}

var stack = [1,2,4,5,6]
insertAtBottom(&stack, 9)
print(stack)
