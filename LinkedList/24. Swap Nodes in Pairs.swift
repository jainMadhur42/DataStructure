
// https://leetcode.com/problems/swap-nodes-in-pairs/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {

    func swapPairs(_ head: ListNode?) -> ListNode? {

        if head == nil || head?.next == nil { return head }
        var newHead = head
        var prev: ListNode? = nil
        var curr = head
        var next: ListNode? = head?.next
        var groupHead: ListNode? = head

        while curr != nil && curr?.next != nil {
            groupHead = next?.next
            next?.next = curr
            curr?.next = groupHead

            if prev != nil {
                prev?.next = next
            } else {
                newHead = next
            }
            prev = curr
            curr = groupHead
            next = groupHead?.next
        }
        return newHead
    }
}
