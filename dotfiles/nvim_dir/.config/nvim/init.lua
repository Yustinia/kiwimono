require("opts.core")
require("config.lazy")
require("opts.keymaps")

-- Load matugen colorscheme after plugins are ready
require("config.matugen").load()

-- Reload on wallpaper change
vim.api.nvim_create_autocmd("Signal", {
    pattern = "SIGUSR1",
    callback = function()
        require("config.matugen").load()
    end,
})
