
// https://leetcode.com/problems/merge-two-sorted-lists/description/

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var head1 = list1
        var head2 = list2
        var head3: ListNode? = ListNode(-1)
        var curr: ListNode? = head3

        if list1 == nil { 
            return list2 
        } else if list2 == nil { 
            return list1 
        } else if list1 == nil && list2 == nil {
            return nil
        }

        while head1 != nil && head2 != nil {
            if head1!.val < head2!.val {
                var l1 = ListNode(head1!.val)
                curr?.next = l1
                curr = l1
                head1 = head1?.next
            } else {
                var l2 = ListNode(head2!.val)
                curr?.next = l2
                curr = l2
                head2 = head2?.next
            }
        }

        if head1 != nil {
            curr?.next = head1
        } else if head2 != nil {
            curr?.next = head2
        }
        return head3?.next
    }
