require("toggleterm")
vim.keymap.set("n", "<leader>j", ":ToggleTerm direction=float<CR>")
vim.keymap.set("t", "<C-j>", "<c-w> :term ++close<cr>")
vim.keymap.set("n", "<leader>J", ":ToggleTerm direction=vertical size=60<CR>")
