return {
	"gelguy/wilder.nvim",
	config = function()
		local wilder = require("wilder")
		wilder.setup({ modes = { ":", "/", "?" } })
		-- Enable fuzzy matching for commands and buffers
		wilder.set_option("pipeline", {
			wilder.branch(
				wilder.cmdline_pipeline({
					fuzzy = 1,
				}),
				wilder.vim_search_pipeline({
					fuzzy = 1,
				})
			),
		})
	end,
}
