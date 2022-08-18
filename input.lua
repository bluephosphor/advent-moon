local function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

local function lines_from(file)
    if not file_exists(file) then return {} end

    local lines = {}

    for line in io.lines(file) do
        lines[#lines + 1] = line
    end

    return lines
end


local _export = {}

_export.day = function(n)
    return lines_from('day/' .. tostring(n) .. '.txt')
end

_export.render = function(list)
    local str = '{'

    for i, value in ipairs(list) do
        str = str .. value
        if i ~= #list then
            str = str .. ','
        end
    end

    str = str .. '}'

    return str
end

return _export