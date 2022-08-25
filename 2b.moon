import day from require 'input'
import strsplit from require 'lib'

list  = day 2
hpos  = 0
depth = 0
aim   = 0

read_input = (line) -> 
    local vector
    switch line[1]
        when 'forward'
            vector = {1, 0,  aim}
        when 'up'
            vector = {0, -1, 0}
        when 'down'
            vector = {0, 1,  0}
    
    aim   += vector[2] * line[2]
    hpos  += vector[1] * line[2]
    depth += vector[3] * line[2]
    
for i, v in ipairs list
    split = strsplit v

    read_input split
    
    print '---------'..i..'---------'
    print 'aim: '   .. aim
    print 'hpos: '  .. hpos
    print 'depth: ' .. depth

print '----------------'
print 'answer: ' .. (hpos * depth)
