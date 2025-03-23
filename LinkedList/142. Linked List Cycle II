// https://leetcode.com/problems/linked-list-cycle-ii/description/

func detectCycle(_ head: ListNode?) -> ListNode? {
        var slowPtr = head
        var fastPtr = head
        var localHead = head

        while(fastPtr != nil && fastPtr?.next != nil) {
            
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next

            if slowPtr === fastPtr {
                 while (localHead !== slowPtr) {
                    localHead = localHead?.next;
                    slowPtr = slowPtr?.next;
                 }
                 return slowPtr
            }
        }

        return nil
    }
