return {
	"folke/snacks.nvim",
	opts = function(_, opts)
		local original_filter = opts.indent.filter
		opts.indent.filter = function(bufnr)
			if vim.bo[bufnr].buftype == "terminal" then
				return false
			end
			return original_filter(bufnr)
		end
	end,
}
