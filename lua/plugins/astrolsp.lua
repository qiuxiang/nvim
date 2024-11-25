return {
	"AstroNvim/astrolsp",
	---@type AstroLSPOpts
	opts = {
		features = {
			semantic_tokens = false,
		},
		formatting = {
			disabled = {
				"jsonls",
			},
		},
	},
}
