import day from require 'input'
import strsplit from require 'lib'

export list  = day 2
export hpos  = 0
export depth = 0
export aim   = 0

-- down X increases your aim by X units.
-- up X decreases your aim by X units.
-- forward X does two things:
--    It increases your horizontal position by X units.
--    It increases your depth by your aim multiplied by X.

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

    --return aim, hpos, depth
    
for i, v in ipairs list
    split = strsplit v

    read_input split
    
    print '---------'..i..'---------'
    print 'aim: '   .. aim
    print 'hpos: '  .. hpos
    print 'depth: ' .. depth

print '----------------'
print 'answer: ' .. (hpos * depth)
