local function file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

local function lines_from(file)
    if not file_exists(file) then return {} end

    local lines = {}

    for line in io.lines(file) do
        lines[#lines + 1] = tonumber(line)
    end

    return lines
end

local function render_list(list)
    local str = '{'

    for i, value in ipairs(list) do
        str = str .. tostring(value)
        if i ~= #list then
            str = str .. ','
        end
    end

    str = str .. '}'

    return str
end

return {
    day = function(day)
        return lines_from('day/' .. tostring(day) .. '.txt')
    end,
    render = render_list
}