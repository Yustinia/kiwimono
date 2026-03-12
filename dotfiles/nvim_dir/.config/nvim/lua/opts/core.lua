-- ==================================================
-- UI / Display
-- ==================================================

-- Line numbers
vim.opt.number = true          -- absolute line numbers
vim.opt.relativenumber = false -- disable relative numbers

-- Gutter
vim.opt.signcolumn = "yes" -- always reserve space for signs
vim.opt.foldcolumn = "1"   -- reserve space for fold markers

-- End-of-buffer markers
vim.opt.fillchars = { eob = " " } -- remove "~" lines

-- Cursor line highlight
vim.opt.cursorline = true

-- Truecolor support
vim.opt.termguicolors = true

-- Remove intro message
vim.opt.shortmess:append("I")


-- ==================================================
-- Cursor
-- ==================================================

vim.opt.guicursor =
    "n-v-c:ver25-blinkwait700-blinkon400-blinkoff250," ..
    "i-ci-ve:ver25-blinkwait700-blinkon400-blinkoff250," ..
    "r-cr:hor20," ..
    "o:hor50"


-- ==================================================
-- Indentation / Tabs
-- ==================================================

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true


-- ==================================================
-- Search
-- ==================================================

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true


-- ==================================================
-- Navigation / Responsiveness
-- ==================================================

vim.opt.scrolloff = 8    -- keep context around cursor
vim.opt.updatetime = 250 -- faster update events


-- ==================================================
-- Folding
-- ==================================================

vim.opt.foldmethod = "indent" -- fold based on indentation
vim.opt.foldlevel = 99        -- start with folds open


-- ==================================================
-- Input
-- ==================================================

-- Mouse support
vim.opt.mouse = "a"

-- System clipboard integration
vim.opt.clipboard = "unnamedplus"


-- ==================================================
-- Syntax Highlighting
-- ==================================================

vim.cmd("syntax on")
