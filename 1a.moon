import day from require 'input'

list = day 1

count = 0

for i, current in ipairs list
    prev = list[i-1] or 0
    if current > prev 
        count += 1

print count
