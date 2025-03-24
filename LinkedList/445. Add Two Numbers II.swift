
// https://leetcode.com/problems/add-two-numbers-ii/?submissionId=986294925
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

    func reverse(_ head: ListNode?) -> ListNode?{
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

    func printList(_ head: ListNode?) {
        var curr = head
        while curr != nil {
            print(curr?.val, separator: " -> ")
            curr = curr?.next
        }
    }

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var reverseHead1 = reverse(l1)
        var reverseHead2 = reverse(l2)

        var dummyNode: ListNode? = ListNode(0)
        var dummyHead: ListNode? = dummyNode
        var carry = 0

        while reverseHead1 != nil || reverseHead2 != nil {
            var sum = (reverseHead1?.val ?? 0) + (reverseHead2?.val ?? 0) + carry
            var node = ListNode(sum%10)
            dummyHead?.next = node
            carry = sum/10

            dummyHead = node
            reverseHead1 = reverseHead1?.next
            reverseHead2 = reverseHead2?.next
        }

        if carry != 0 {
            var node = ListNode(carry)
            dummyHead?.next = node
            dummyHead = node
        }
        var ansList = reverse(dummyNode?.next)
        printList(ansList)
        return ansList
    }
}
