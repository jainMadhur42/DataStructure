// https://leetcode.com/problems/reorder-list/

class Solution {

     func findMid(_ head: ListNode?) -> ListNode? {
        var slowPtr = head
        var fastPtr = head
        while fastPtr != nil && fastPtr?.next != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }

        return slowPtr
    }

    func reverse(_ head: ListNode?) -> ListNode? {
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

    func reorderList(_ head: ListNode?) {
        
        var mid = findMid(head)
        var currentHead = head
        var secondHalf = mid?.next
        mid?.next = nil

        secondHalf = reverse(secondHalf)
        
        var firstHalf = head

        while(firstHalf != nil && secondHalf != nil) {
            let temp1 = firstHalf?.next
            let temp2 = secondHalf?.next

            firstHalf?.next = secondHalf
            secondHalf?.next = temp1

            firstHalf = temp1
            secondHalf = temp2   
        }
    }
}
