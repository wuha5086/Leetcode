class MovingAverage:

    def __init__(self, size: int):
        """
        Initialize your data structure here.
        """
        self.size =  size
        self.sum = 0.0
        self.queue = []

    def next(self, val: int) -> float:
# Your MovingAverage object will be instantiated and called as such:
# obj = MovingAverage(size)
# param_1 = obj.next(val)
        if len(self.queue) == self.size:
            e = self.queue.pop(0)
            self.sum -= e
        self.queue.append(val)
        self.sum += val
        return self.sum / len(self.queue)
 