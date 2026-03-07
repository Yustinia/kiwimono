return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                position = "right",
                mappings = {
                    ["<bs>"] = "noop",
                },
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                },
                cwd_target = {
                    sidebar = "root",
                },
            },
        })

        -- Open Neo-tree automatically on launch
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                require("neo-tree.command").execute({ action = "show" })
            end,
        })

        -- Close Neovim if Neo-tree is the only remaining window
        vim.api.nvim_create_autocmd("BufEnter", {
            callback = function()
                local wins = vim.api.nvim_list_wins()
                local real_wins = 0
                for _, win in ipairs(wins) do
                    local buf = vim.api.nvim_win_get_buf(win)
                    local ft = vim.api.nvim_get_option_value("filetype", { buf = buf })
                    if ft ~= "neo-tree" then
                        real_wins = real_wins + 1
                    end
                end
                if real_wins == 0 then
                    vim.cmd("quit")
                end
            end,
        })
    end,
}
