local M = {}

local path = vim.fn.stdpath("config") .. "/lua/matugen/colors.lua"

function M.load()
    local file = io.open(path, "r")
    if file then
        io.close(file)
        dofile(path)
    else
        -- Fallback if matugen hasn't run yet
        vim.cmd("colorscheme base16-default-dark")
    end
end

return M
