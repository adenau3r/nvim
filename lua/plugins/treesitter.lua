return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    cmd = "TSUpdate",
    ft = vim.g.known_fts,
    config = function()
        require("nvim-treesitter.configs").setup{
            ensure_installed = vim.g.known_fts,
            parser_dir = vim.fn.stdpath("data") .. "/treesitter/",
            auto_install = false,
            highlight = { enable = true, },
            indent = { enable = true, },
        }
    end
}
