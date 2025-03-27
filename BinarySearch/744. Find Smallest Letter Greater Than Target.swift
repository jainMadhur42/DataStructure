
// https://leetcode.com/problems/find-smallest-letter-greater-than-target/

class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var start = 0
        var end = letters.count - 1
        var mid = start + (end - start)/2
        var ans = letters[0]

        while(start <= end) {
            if letters[mid] > target {
                ans = letters[mid]
                end = mid - 1
            } else {
                start = mid + 1
            }
            mid = start + (end - start)/2

        }
        return ans
    }
}
