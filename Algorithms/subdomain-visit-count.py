from collections import Counter
class Solution:
    def subdomainVisits(self, cpdomains: List[str]) -> List[str]:
        counter = Counter()
        for c in cpdomains:
            numVisits, domains = c.split()
            currStr = ''
            domains = domains.split('.')
            for i, d in enumerate(domains):
                counter['.'.join(domains[i:])] += int(numVisits)
        
        return [f"{numVisits} {domain}" for domain, numVisits in counter.items()]