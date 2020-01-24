# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
	def sortList(self, head: ListNode) -> ListNode:
		temp = head
		a = []
		while(temp):
			a.append(temp.val)
			temp=temp.next
		if not a:
			return head
		a.sort()
		head = ListNode(a[0])
		temp= head
		for i in range(1, len(a)):
			temp.next = ListNode(a[i])
			temp = temp.next
		return head