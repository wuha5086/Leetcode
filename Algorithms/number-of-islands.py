class Solution:
    def numIslands(self, grid: List[List[str]]) -> int:
        islands = 0
        for i in range(len(grid)):
            for j in range(len(grid[i])):
                if grid[i][j] == '1':
                    islands += 1
                    self.helper(grid,i,j)
        return islands
    def helper(self,grid,i,j):
        if i<0 or j<0 or i>=len(grid) or j>=len(grid[i]) or grid[i][j] != '1':
            return
        grid[i][j] = '0'
        self.helper(grid, i+1, j)
        self.helper(grid, i-1, j)
        self.helper(grid, i, j+1)
        self.helper(grid, i, j-1)
 
 # https://www.youtube.com/watch?v=i2PYONDKbdk&feature=youtu.be