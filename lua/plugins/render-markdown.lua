---@type LazySpec
return {
	"MeanderingProgrammer/render-markdown.nvim",
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		checkbox = {
			unchecked = { icon = "⬜" },
			checked = { icon = "✅" },
		},
		heading = { icons = {}, sign = false, backgrounds = {} },
		anti_conceal = {
			enabled = false,
		},
		code = {
			sign = false,
			language = false,
		},
	},
}
