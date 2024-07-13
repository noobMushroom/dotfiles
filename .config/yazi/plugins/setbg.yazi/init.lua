---@diagnostic disable: undefined-global

return {
    entry = function(_, _)
        local file = cx.active.current.hovered
        if file then
            os.execute(string.format('setbg "%s"', file.url))
            -- os.execute(string.format('echo "%s"', file.cwd))
        end
    end,
}
