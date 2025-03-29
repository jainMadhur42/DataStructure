
//https://leetcode.com/problems/min-stack/



class MinStack {

    var stack: [Int] = []
    var min = Int.max

    init() {
        
    }
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append(val)
            min = val
        }  else if min < val {
            stack.append(val)
        } else {
            stack.append(2 * val - min)
            min = val
        }
        print(min)
    }
    
    func pop() {
        if stack.last! < min {
            min = (2 * min) - stack.last!
        } 
        stack.popLast()
    }
    
    func top() -> Int {
        if stack.last! < min {
            return min
        } else {
            return stack.last!
        }
    }
    
    func getMin() -> Int {
        return min
    }
}
