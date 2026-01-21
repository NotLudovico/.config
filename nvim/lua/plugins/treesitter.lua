return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "lua", "python" })
	end,
}
