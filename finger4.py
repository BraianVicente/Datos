import sys
i=int(sys.argv[1])
p=1
for x in range(2,i):
 if i%x==0:p=0
print p
