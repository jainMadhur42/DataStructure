// https://leetcode.com/problems/reverse-linked-list-ii/description/

func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if head == nil || left == right { return head }

        var curr: ListNode? = head
        var prev: ListNode? = nil
        var i = 1
        while i != left {
            prev = curr
            curr = curr?.next
            i += 1
        }

        var pointToStart: ListNode? = prev
        var start: ListNode? = curr
        prev = nil
        var next: ListNode? = nil

        while(curr != nil && i != right + 1) {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
            i += 1
        }

        start?.next = curr
        if pointToStart != nil {
            pointToStart?.next = prev
        } else {
            return prev
        }
        return head

    }
