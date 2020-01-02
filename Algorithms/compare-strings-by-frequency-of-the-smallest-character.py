from bisect import bisect
class Solution:
    def numSmallerByFrequency(self, queries: List[str], words: List[str]) -> List[int]:
        f = lambda word: word.count(min(word))
        words = sorted(map(f, words))
        return [len(words) - bisect(words, f(query)) for query in queries]