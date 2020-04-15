class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        leftMostIndex, rightMostIndex = self.leftSearch(nums, target), self.rightSearch(nums, target)
        return [leftMostIndex, rightMostIndex]
    
    def leftSearch(self, nums, target):
        targetIndex = -1
        l, r = 0, len(nums)-1
        while l <= r:
            mid = (l+r)//2
            if nums[mid] == target:   # ------ [1]
                targetIndex = mid
                r = mid - 1 # shift the right towards the left (since I'm trying to find the left-most)
            elif nums[mid] < target:
                l = mid+1
            else:
                r = mid-1
        return targetIndex  # don't terminate - keep updating  ---- [1]


    def rightSearch(self, nums, target):
        targetIndex = -1
        l, r = 0, len(nums)-1
        while l <= r:
            mid = (l+r)//2
            if nums[mid] == target:
                targetIndex = mid
                l = mid + 1 # shift the left towatds the right (wanna find the right-most)
            elif target < nums[mid]:
                 r = mid-1
            else:
                l = mid+1
        return targetIndex

#https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/discuss/496706/Python-Accepted-Linear-and-O(logN)-solutions-with-explanation