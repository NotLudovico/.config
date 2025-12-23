return {
	"stevearc/conform.nvim",
	opts = {

		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_fix", "ruff_format", lsp_format = "fallback" },
			rust = { "rustfmt", lsp_format = "fawlback" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
