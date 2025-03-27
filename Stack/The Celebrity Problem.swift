
// https://www.geeksforgeeks.org/problems/the-celebrity-problem/1

func isCelebrity(_ matrix: [[Int]]) -> Int {
    var stack: [Int] = []
    
    // Step 1: Push all element in stack
    for i in 0..<matrix.count {
        stack.append(i)
    }
    
    // Step 2: 
    while stack.count != 1 {
        var a = stack.popLast()!
        var b = stack.popLast()!
        
        if matrix[a][b] == 1 {
            stack.append(b)
        } else {
            stack.append(a)
        }
    }
    var candidate = stack.last!
    // Step 3: Single element in stack is potential 
    
    var rowCheck = false
    var zeroCount = 0
    
    for i in 0..<matrix.count {
        if matrix[candidate][i] == 0 {
            zeroCount += 1
        }
    }
    
    if zeroCount == matrix.count - 1 {
        rowCheck = true
    }
    
     var colCheck = false
     var oneCount = 0
    
     for i in 0..<matrix.count {
        if matrix[i][candidate] == 1 {
            oneCount += 1
        }
    }
    
    if oneCount == matrix.count {
        colCheck = true
    }
    if colCheck && rowCheck {
        return candidate
    } else {
        return -1
    }
}

print(isCelebrity([[1,1,0],[0,1,0],[0,1,1]]))
print(isCelebrity([[1,1],[1,1]]))
