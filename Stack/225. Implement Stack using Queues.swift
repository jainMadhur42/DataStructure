
// https://leetcode.com/problems/implement-stack-using-queues/description/

class MyStack {

    var queue: [Int] = []

    init() {
        
    }
    
    func push(_ x: Int) {
        let size = queue.count
        queue.append(x)

        for _ in 0..<size {
            queue.append(queue.removeFirst())
        }
    }
    
    func pop() -> Int {
        if queue.isEmpty {
            return -1
        } else {
           return queue.removeFirst()
        }
    }
    
    func top() -> Int {
        return queue.first!    
    }
    
    func empty() -> Bool {
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
