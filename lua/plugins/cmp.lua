return { -- override nvim-cmp plugin
	"hrsh7th/nvim-cmp",
	opts = function(_, opts)
		local cmp = require("cmp")
		opts.mapping["<Tab>"] = nil
	end,
}
