func sortedInsert(_ stack: inout [Int], _ num: Int) {
    if stack.isEmpty || (!stack.isEmpty && stack.last! < num) {
        stack.append(num)
        return
    }
    var n = stack.popLast()
    sortedInsert(&stack, num)
    
    stack.append(n!)
}

func sortStack(_ stack: inout [Int])  {
    if stack.isEmpty {
        return
    }
    
    var element = stack.popLast()
    sortStack(&stack)
    sortedInsert(&stack, element!)
}

var stack2 = [5,9,-7,3,-2,10]
sortStack(&stack2)
print(stack2)
