return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			vim.lsp.config.lua_ls = {}
			vim.lsp.enable("lua_ls")

			-- 2. Setup basedpyright with relaxed rules
			vim.lsp.config.basedpyright = {
				settings = {
					basedpyright = {
						analysis = {
							-- "standard" is usually strict enough.
							typeCheckingMode = "basic",

							-- Explicitly disable the noisy "Unknown" type warnings
							reportUnknownMemberType = false,
							reportUnknownArgumentType = false,
							reportUnknownVariableType = false,
							reportAny = false,
						},
					},
				},
			}
			vim.lsp.enable("basedpyright")
		end,
	},
}
