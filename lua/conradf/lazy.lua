themeNumber = 4

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
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5', priority = 1000 },

    { "nvim-treesitter/nvim-treesitter",priority = 1000, build = ":TSUpdate", },
    { "nvim-treesitter/nvim-treesitter-context" },

    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig', priority = 100},
    {'hrsh7th/cmp-nvim-lsp', priority = 100},
    {'hrsh7th/nvim-cmp', priority = 100},
    {'L3MON4D3/LuaSnip', priority = 100},
    {"nvim-lua/plenary.nvim", priority = 100},

    {'ThePrimeagen/vim-be-good'},
    {'ThePrimeagen/harpoon'},

    {'windwp/nvim-autopairs', event = "InsertEnter", opts = {}},
    {'fatih/vim-go', run = 'GoUpdateBinaries'},

    {'nvim-tree/nvim-web-devicons' },
    {'nvim-lualine/lualine.nvim' },

    {'tpope/vim-fugitive'},
}

local themes = {
    {"conweller/muted.vim", "muted"},
    {"junegunn/seoul256.vim", "seoul256"},
    {"sainnhe/everforest", "everforest"},
    {"EdenEast/nightfox.nvim", "nordfox"},
    {"sainnhe/sonokai", "sonokai"}
}

for _, v in pairs(themes) do
    table.insert(plugins, {v[1], lazy = false, priority = 10})
end

opts = {}
require("lazy").setup(plugins, opts)

vim.cmd.colorscheme(themes[themeNumber][2])
