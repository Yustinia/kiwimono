return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                python = { "black" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                lua = { "stylua" },
                c = { "clang_format" },
                cpp = { "clang_format" },
                go = { "gofmt" },
            },
        })
    end,
}
