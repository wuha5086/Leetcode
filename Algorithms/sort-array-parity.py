class Solution:
    def sortArrayByParity(self, A: List[int]) -> List[int]:
        list1 = []
        list2 = []
        for item in A:
            if item % 2 == 0:
                list1.append(item)
            else:
                list2.append(item)
        return list1+list2
            