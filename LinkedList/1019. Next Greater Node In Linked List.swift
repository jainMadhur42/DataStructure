
//https://leetcode.com/problems/next-greater-node-in-linked-list/


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


    func nextGreaterElement(_ nums: [Int]) -> [Int] {
        var stack = [0]
        var ans: [Int] = []
        var i = nums.count - 1
        while i >= 0 {
            while stack.last! != 0 && stack.last! <= nums[i] {
               stack.popLast()!
            }
            ans.append(stack.last!)
            stack.append(nums[i])
            i -= 1
        }
        return ans.reversed()
    }

    func nextLargerNodes(_ head: ListNode?) -> [Int] {
         var values: [Int] = []
        var current = head
        
        // Convert Linked List to an array
        while current != nil {
            values.append(current!.val)
            current = current?.next
        }
        return nextGreaterElement(values)
    }
}
