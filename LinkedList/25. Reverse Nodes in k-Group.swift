
//https://leetcode.com/problems/reverse-nodes-in-k-group/description/

class Solution {


    private func reverse(_ head: ListNode?, _ k: Int) -> (ListNode?, ListNode?) {
        var prev: ListNode? = nil
        var curr = head
        var next: ListNode? = nil
        var count = 0
        
        while count < k, curr != nil {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
            count += 1
        }
        
        return (prev, head) // New head and new tail of reversed group
    }

    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
       guard head != nil, k > 1 else { return head }
        
        let dummy = ListNode(0)
        dummy.next = head
        var prevGroupEnd: ListNode? = dummy
        var curr: ListNode? = head

        while curr != nil {
            // Check if we have at least k nodes
            var kthNode = curr
            for _ in 1..<k {
                kthNode = kthNode?.next
                if kthNode == nil { return dummy.next } // Not enough nodes left
            }
            
            // Reverse k nodes
            let nextGroupStart = kthNode?.next
            let (newHead, newTail) = reverse(curr, k)
            
            // Connect the previous group's end to the new head
            prevGroupEnd?.next = newHead
            newTail?.next = nextGroupStart
            
            // Move pointers forward
            prevGroupEnd = newTail
            curr = nextGroupStart
        }
        
        return dummy.next
    }
}
