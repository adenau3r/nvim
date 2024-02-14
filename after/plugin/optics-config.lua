require("lualine").setup({
	options = {
		theme = vim.g.colors_name,
	},
})

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")


dashboard.section.buttons.val = {
	dashboard.button("n", " > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "󰱽 > Find file", ":cd $HOME | Telescope find_files<CR>"),
	dashboard.button("r", "󱔳 > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("e", " > Explore", ":Ex<CR>"),
	dashboard.button("s", " > Settings", ":e $MYVIMRC | :cd %:p:h | vsplit . | wincmd k | pwd<CR>"),
	dashboard.button("q", "󰗼 > Quit NVIM", ":qa<CR>"),
}

local header_rammstein = {
	[[ ____    _____   ______  ____   _  ____    __   _  ______  _____   ]],
	[[|    \  |     \ |   ___||    \ | ||    \  |  | | ||___   ||     |  ]],
	[[|     \ |      \|   ___||     \| ||     \ |  |_| ||___   ||     \  ]],
	[[|__|\__\|______/|______||__/\____||__|\__\|______||______||__|\__\ ]],
}

local header_graffiti = {
	[[            .___                        ________        ]],
	[[_____     __| _/____   ____ _____   __ _\_____  \______ ]],
	[[\__  \   / __ |/ __ \ /    \\__  \ |  |  \_(__  <_  __ \]],
	[[ / __ \_/ /_/ \  ___/|   |  \/ __ \|  |  /       \  | \/]],
	[[(____  /\____ |\___  >___|  (____  /____/______  /__|   ]],
	[[     \/      \/    \/     \/     \/            \/       ]],
}

local header_shadow = {
	[[ █████╗ ██████╗ ███████╗███╗   ██╗ █████╗ ██╗   ██╗██████╗ ██████╗ ]],
	[[██╔══██╗██╔══██╗██╔════╝████╗  ██║██╔══██╗██║   ██║╚════██╗██╔══██╗]],
	[[███████║██║  ██║█████╗  ██╔██╗ ██║███████║██║   ██║ █████╔╝██████╔╝]],
	[[██╔══██║██║  ██║██╔══╝  ██║╚██╗██║██╔══██║██║   ██║ ╚═══██╗██╔══██╗]],
	[[██║  ██║██████╔╝███████╗██║ ╚████║██║  ██║╚██████╔╝██████╔╝██║  ██║]],
	[[╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝]],
}

local header_spliff = {
[[ _____  _____  _____  _____  _____  __ __  _____  _____ ]],
[[/  _  \|  _  \/   __\/  _  \/  _  \/  |  \/  _  \/  _  \]],
[[|  _  ||  |  ||   __||  |  ||  _  ||  |  |>-<_  <|  _  <]],
[[\__|__/|_____/\_____/\__|__/\__|__/\_____/\_____/\__|\_/]],

}
dashboard.section.header.val = header_shadow
alpha.setup(dashboard.opts)
