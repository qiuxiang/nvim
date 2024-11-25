---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		options = {
			opt = {
				relativenumber = false,
				number = false,
			},
			g = {
				-- clipboard = {
				-- 	copy = { ["+"] = require("vim.ui.clipboard.osc52").copy("+") },
				-- },
			},
		},
	},
}
