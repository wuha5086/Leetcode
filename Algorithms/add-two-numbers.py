# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def addTwoNumbers(self, l1: ListNode, l2: ListNode) -> ListNode:
        prev = 0
        head = l1
        while l1 and l2: 
            l1.val += l2.val + prev
            if l1.val < 10: 
                prev = 0
            else:
                l1.val %= 10
                prev = 1
            if not l1.next or not l2.next:
                break
            else:
                l1, l2 = l1.next, l2.next 
        if l2.next:
            l1.next = l2.next     
        while l1.next:
            l1.next.val += prev
            if l1.next.val < 10: 
                prev = 0 
            else:
                l1.next.val %= 10
                prev = 1
            l1 = l1.next     
        if prev:
            l1.next = ListNode(1)
        return head