func solve(_ stack: inout [Int], _ size: Int, _ count: Int)  {
    if count == size/2 {
        stack.popLast()
        return
    }
    
    var element = stack.popLast()
    solve(&stack, size, count + 1)
    stack.append(element!)
}

var stack = [1,2,4,5,6]
solve(&stack, stack.count,0)
print(stack)
