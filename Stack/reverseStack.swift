

func insertAtBottom(_ stack: inout [Int], _ number: Int)  {
    if stack.isEmpty {
        stack.append(number)
        return
    }
    
    var element = stack.popLast()
    insertAtBottom(&stack, number)
    stack.append(element!)
}

func reverseStack(_ stack: inout [Int])  {
    if stack.isEmpty {
        return
    }
    
    var element = stack.popLast()
    reverseStack(&stack)
    insertAtBottom(&stack, element!)
}

var stack = [1,2,4,5,6]
reverseStack(&stack)
print(stack)
