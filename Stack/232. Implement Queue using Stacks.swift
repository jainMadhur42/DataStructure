
// https://leetcode.com/problems/implement-queue-using-stacks/



// Use recursion as a second stack.

class MyQueue {

    var stack: [Int] = []


    init() {
        
    }
    
    func push(_ x: Int) {
        stack.append(x)    
    }
    
    func pop() -> Int {
        if stack.isEmpty {
            return -1
        }

        var last = stack.popLast()
        if stack.isEmpty {
            return last!
        }
        let front = pop()
        stack.append(last!)
        return front
    }
    
    func peek() -> Int {
        if stack.isEmpty {
            return -1
        }

        var last = stack.popLast()
        if stack.isEmpty {
            stack.append(last!)
            return last!
        }
        let front = peek()
        stack.append(last!)
        return front
    }
    
    func empty() -> Bool {
        return stack.isEmpty 
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
