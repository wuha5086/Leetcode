class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        max_profit = 0
        for day in range(len(prices) - 1):
            # if profit would be negative max(profit, 0)
            max_profit += max(prices[day + 1] - prices[day], 0)
        return max_profit