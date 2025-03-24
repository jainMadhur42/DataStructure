
// https://leetcode.com/problems/guess-number-higher-or-lower

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var start = 0 
        var end = n
        var mid = start + (end - start)/2

        while start <= end {
            var guess = guess(mid)
            if guess == 0 {
                return mid
            } else if guess == 1 {
                start = mid + 1
            } else {
                end = mid - 1
            }
            mid = start + (end - start)/2
        }
        return 0
    }

}
