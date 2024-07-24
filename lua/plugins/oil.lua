return {
	"stevearc/oil.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        require("oil").setup({
            default_file_explorer = true,
            constrain_cursor = "editable",
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
            },
            view_options = {
                show_hidden = true,
                natural_order = true,
            },
        })
    end
}
