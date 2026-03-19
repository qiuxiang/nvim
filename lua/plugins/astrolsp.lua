---@type LazySpec
return {
	"AstroNvim/astrolsp",
	opts = {
		features = {
			semantic_tokens = false,
		},
		formatting = {
			disabled = {
				"vtsls",
				"jsonls",
			},
		},
		config = {
			dartls = {
				settings = {
					lineLength = 120,
				},
			},
		},
	},
}
