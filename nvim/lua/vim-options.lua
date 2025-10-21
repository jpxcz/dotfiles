vim.g.mapleader = " "

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- remove hightlight of searched world
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- copy/paste
-- vim.keymap.set("n", "d", '"_d')
-- vim.keymap.set("v", "d", '"_d')

-- diagnostic float text
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- quickfix list navigation
vim.keymap.set("n", "<leader>]", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>[", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })

-- copilot
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_hl(0, "CopilotSuggestion", { fg = "#B2B1A2" })

-- others
vim.wo.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.splitright = true
