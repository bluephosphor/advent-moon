import day from require 'input'
import strsplit from require 'lib'

list = day 2
pos = {0, 0}

map = 
    --map the string values of input to a x,y tuple
    'forward': {1, 0}
    'up':      {0, -1}
    'down':    {0, 1}

move = (pos, vec, amt) ->
    return {
        pos[1] + (vec[1] * amt),
        pos[2] + (vec[2] * amt)
    }

for i, v in ipairs list
    split = strsplit v
    vec = map[split[1]]
    amt = split[2]

    pos = move pos, vec, amt
    print '(' .. pos[1] .. ',' .. pos[2] .. ')'

print 'final position: ' .. '(' .. pos[1] .. ',' .. pos[2] .. ')'
print 'answer: ' .. pos[1] * pos[2]