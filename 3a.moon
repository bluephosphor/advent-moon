import day from require 'input'
import bin2dec from require 'lib'

list = day 3
info = {}

for line in *list
    for i = 1, #line
        figure = string.sub line, i, i
        if info[i] == nil
            info[i] = {0,0}
        if figure > '0' 
            info[i][2] += 1
        else
            info[i][1] += 1

str = ''
str2 = ''
for item in *info
    zeroes  = item[1]
    ones    = item[2]
    result  = zeroes > ones and '1' or '0'
    inverse = result == '0' and '1' or '0'
    str     = str .. result
    str2    = str2 .. inverse
    
gamma   = bin2dec str
epsilon = bin2dec str2
print str
print str2
print gamma
print epsilon

print 'answer: ', tonumber(gamma) * tonumber(epsilon)