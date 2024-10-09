return {
    {
        "rose-pine/neovim",
        as = "rose-pine",
        priority = 100,
        config = function()
            vim.opt.termguicolors = true
            vim.cmd.colorscheme "rose-pine-moon"
            vim.opt.background = "dark"

            --vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })

            ---- Make background transparent on every colorscheme
            --vim.api.nvim_create_autocmd("Colorscheme", {
            --    callback = function()
            --        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
            --    end
            --})
        end
    },
}
