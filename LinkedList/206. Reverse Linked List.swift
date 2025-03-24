
// https://leetcode.com/problems/reverse-linked-list/

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr = head
        var next: ListNode? = nil

        while curr != nil {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        return prev
    }
}
