import day from require 'input'

list = day 1

last_sum = 0
count    = 0

for i = 1, #list - 3, 1

    local_sum = list[i] + list[i+1] + list[i+2]
    
    if local_sum > last_sum then count += 1
    
    last_sum = local_sum

print count
