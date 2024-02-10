local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>ww', function() mark.add_file() end)
vim.keymap.set('n', '<leader>a', function() ui.nav_prev() end)
vim.keymap.set('n', '<leader>ss', function() ui.toggle_quick_menu() end)
vim.keymap.set('n', '<leader>d', function() ui.nav_next() end)
