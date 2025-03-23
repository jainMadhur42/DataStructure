// https://leetcode.com/problems/linked-list-cycle/description/

func hasCycle(_ head: ListNode?) -> Bool {
        var slowPtr = head
        var fastPtr = head


        while(fastPtr != nil && fastPtr?.next != nil) {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
            if slowPtr === fastPtr {
                return true
            }
        }    
        return false
    }
