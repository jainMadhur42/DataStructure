
https://leetcode.com/problems/copy-list-with-random-pointer/description/?envType=problem-list-v2&envId=9rizphpj

class Solution {
    
    func insertAtTail(_ head: inout Node?, _ tail: inout Node?, _ val: Int) {
        var newNode = Node(val)
        if head == nil {
            head = newNode
            tail = newNode
        } else {
            tail?.next = newNode
            tail = newNode
        }
    }
    
    func copyRandomList(_ head: Node?) -> Node? {
        
        // Step1: Create Cloned list
        var cloneHead: Node? = nil
        var cloneTail: Node? = nil
        
        var temp: Node? = head
        while temp != nil {
            insertAtTail(&cloneHead, &cloneTail, temp!.val)
            temp = temp?.next
        }
        
        // Step 2: CloneNodes add in between original list
        var originalNode = head
        var cloneNode = cloneHead
        
        while originalNode != nil && cloneNode != nil {
            var next = originalNode?.next
            originalNode?.next = cloneNode
            originalNode = next
            
            next = cloneNode?.next
            cloneNode?.next = originalNode
            cloneNode = next
        }
        
        // Step 3: Random pointer copy
        temp = head
        while temp != nil {
            if temp?.next != nil {
                // Can be shorthand using ternery operator
                temp?.next?.random = temp?.random != nil ? temp?.random?.next : temp?.random
            }
            temp = temp?.next?.next
        }
            // Step 4 revert changed done in step 2
            originalNode = head
            cloneNode = cloneHead
            
            while originalNode != nil && cloneNode != nil {
                originalNode?.next = cloneNode?.next
                originalNode = originalNode?.next
                
                if originalNode != nil {
                    cloneNode?.next = originalNode?.next
                }
                cloneNode = cloneNode?.next
            }
        // Step 5: return ans
        return cloneHead
    }
}
