local _export = {}

_export.strsplit = function(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

_export.bin = function(input)
    return input and 1 or 0
end

_export.bin2dec = function(s)

    -- s	-> binary string

    local num = 0
    local ex = string.len(s) - 1
    local l = 0

    l = ex + 1
    for i = 1, l do
        b = string.sub(s, i, i)
        if b == "1" then
            num = num + 2 ^ ex
        end
        ex = ex - 1
    end

    return string.format("%u", num)

end

return _export
