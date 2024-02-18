local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>S', function() ui.toggle_quick_menu() end)
vim.keymap.set('n', '<leader>a', function() ui.nav_prev() end)
vim.keymap.set('n', '<leader>d', function() ui.nav_next() end)
vim.keymap.set('n', '<leader>s', function() require("harpoon.mark").add_file() end)

require("harpoon").setup({
    global_settings = {
    -- set marks specific to each git branch inside git repository
    mark_branch = true,

    -- enable tabline with harpoon marks
    tabline = true,
}
})
