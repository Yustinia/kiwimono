local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ==================================================
-- Disable default Vim movement
-- ==================================================
for _, key in ipairs({ "h", "j", "k", "l" }) do
	map({ "n", "v" }, key, "<Nop>", opts)
end

-- ==================================================
-- Arrow movement (Normal mode)
-- ==================================================
map("n", "<Up>", "k", opts)
map("n", "<Down>", "j", opts)
map("n", "<Left>", "h", opts)
map("n", "<Right>", "l", opts)

-- ==================================================
-- Telescope
-- ==================================================
map("n", "<C-f>", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<C-S-p>", "<cmd>Telescope commands<CR>", opts)

-- ==================================================
-- Buffer navigation (Bufferline)
-- ==================================================
for i = 1, 9 do
	map("n", "<A-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", opts)
end

-- ==================================================
-- Move lines
-- ==================================================
map("n", "<A-Up>", "<cmd>m .-2<CR>==", opts)
map("n", "<A-Down>", "<cmd>m .+1<CR>==", opts)

map("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)

-- ==================================================
-- Selection (Shift + arrows)
-- ==================================================
map("n", "<S-Up>", "vk", opts)
map("n", "<S-Down>", "vj", opts)
map("n", "<S-Left>", "vh", opts)
map("n", "<S-Right>", "vl", opts)

map("v", "<S-Up>", "k", opts)
map("v", "<S-Down>", "j", opts)
map("v", "<S-Left>", "h", opts)
map("v", "<S-Right>", "l", opts)

-- ==================================================
-- Line selection
-- ==================================================
map("n", "<S-End>", "v$h", opts)
map("n", "<S-Home>", "v^", opts)

map("v", "<S-End>", "$h", opts)
map("v", "<S-Home>", "^", opts)

-- ==================================================
-- Word selection
-- ==================================================
map("n", "<C-S-Right>", "vw", opts)
map("n", "<C-S-Left>", "vb", opts)

map("v", "<C-S-Right>", "w", opts)
map("v", "<C-S-Left>", "b", opts)

-- ==================================================
-- Clipboard
-- ==================================================
map({ "n", "v" }, "<C-S-c>", '"+y', opts)
map({ "n", "v" }, "<C-S-v>", '"+p', opts)

-- ==================================================
-- Indentation
-- ==================================================
map("n", "<Tab>", ">>", opts)
map("n", "<S-Tab>", "<<", opts)

map("v", "<Tab>", ">gv", opts)
map("v", "<S-Tab>", "<gv", opts)

map("i", "<S-Tab>", "<C-d>", opts)

map("n", "<C-w>", "<cmd>bp<bar>bd #<CR>", opts)

-- ====================================
-- Toggle sidebar (Neo-tree)
-- ====================================
map({ "n", "v", "i" }, "<C-e>", function()
	local current_ft = vim.api.nvim_get_option_value("filetype", { buf = vim.api.nvim_get_current_buf() })
	if current_ft == "neo-tree" then
		vim.api.nvim_set_current_win(vim.fn.win_getid(vim.fn.winnr("#")))
	end
	vim.cmd("Neotree toggle")
end, opts)

-- Makes C-e work even when Neo-tree buffer has focus
vim.api.nvim_create_autocmd("FileType", {
	pattern = "neo-tree",
	callback = function()
		map("n", "<C-e>", function()
			vim.api.nvim_set_current_win(vim.fn.win_getid(vim.fn.winnr("#")))
			vim.cmd("Neotree toggle")
		end, { noremap = true, silent = true, buffer = true })
	end,
})
