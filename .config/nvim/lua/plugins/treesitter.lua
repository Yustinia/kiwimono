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
                    ["<bs>"] = "noop", -- disable backspace going up a directory
                },
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false
                },
                cwd_target = {
                    sidebar = "root", -- sidebar always shows cwd root
                },
            },
        })
    end,
}
