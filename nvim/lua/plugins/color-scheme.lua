return {
	'AlexvZyl/nordic.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		require('nordic').load()
	end
}
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 	end
-- }
-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme tokyonight-storm")
--   end,
-- }
