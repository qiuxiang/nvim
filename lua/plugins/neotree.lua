---@type LazySpec
return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		source_selector = { winbar = false },
		window = { width = 40 },
		default_component_configs = {
			icon = {
				folder_closed = "+",
				folder_open = "-",
				folder_empty = "+",
				folder_empty_open = "-",
				default = " ",
				provider = function(icon, _, _)
					return icon
				end,
			},
		},
	},
}
