class Solution:
    def shortestToChar(self, S: str, C: str) -> List[int]:
        indexes = [i for i, ltr in enumerate(S) if ltr == C]        # finds all occurances of char
        results = []        # results will be stored here
    
        for i in range(len(S)):     # iterates through all indexes of S
            minimum = len(S)        # sets minimum as the biggest possible value to find minimum later
            for idx in indexes:     # iterates through all indexes of char
                difference = abs(idx - i)       # absolute value of difference
                if difference < minimum:        # if difference is smaller, set new minimum
                    minimum = difference
            results.append(minimum)     # adds minimum to results
        
        return results