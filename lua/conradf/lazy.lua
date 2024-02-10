themeNumber = 3

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

plugins = {
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5', },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", },
    { "nvim-treesitter/nvim-treesitter-context" },

    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {"nvim-lua/plenary.nvim"},

    { 'nvim-telescope/telescope.nvim', tag = '0.1.5', },

    { 'ThePrimeagen/vim-be-good' },
    { 'ThePrimeagen/harpoon' },

    { 'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
    { 'fatih/vim-go', run = 'GoUpdateBinaries'},

    { 'nvim-tree/nvim-web-devicons' },
    { 'nvim-lualine/lualine.nvim' },

    { 'tpope/vim-fugitive'},
}

local themes = {
    {"conweller/muted.vim", "muted"},
    {"junegunn/seoul256.vim", "seoul256"},
    {"sainnhe/everforest", "everforest"},
    {"EdenEast/nightfox.nvim", "nightfox"},
    {"sainnhe/sonokai", "sonokai"}
}

for _, v in pairs(themes) do
    table.insert(plugins, {v[1], lazy = false, priority = 10})
end

opts = {}
require("lazy").setup(plugins, opts)

vim.cmd.colorscheme(themes[themeNumber][2])
