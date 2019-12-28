class Solution:
    def reverse(self, x: int) -> int:
        r=0
        rev=0
        flag=0
        if(x<0):
            flag=1
            x=x*(-1)
        while(x!=0):
            r=x%10
            rev=(rev*10)+r
            x=x//10
        if(flag==1):
            rev=rev*(-1)
        if(rev<-2**31 or rev>2**31):
            return 0
        else:
            return rev