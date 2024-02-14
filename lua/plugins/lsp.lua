return {
    { "vonheikemen/lsp-zero.nvim" },
	{
		"williamboman/mason.nvim",
		lazy = false,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{ "neovim/nvim-lspconfig", lazy = false },
	{ "fatih/vim-go", run = "GoUpdateBinaries" },
}
