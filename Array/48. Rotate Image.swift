
// https://leetcode.com/problems/rotate-image/description/

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        var n = matrix.count;
        var i = 0
        while i < n {
            var j = i + 1
            while j < n {
                var temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
                j += 1
            }
            i += 1
        }
        
        //print(matrix)
        
        i = 0
        while i < n {
            var j = 0
            while j < n/2 {
                 var temp = matrix[i][n-j-1]
                matrix[i][n-j-1] = matrix[i][j]
                matrix[i][j] = temp
                j += 1
            }
            i += 1
        }
    }
}
