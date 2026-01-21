vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2

-- fuzzier search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"

-- diagnositcs
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- can undo even after vim closed and reopened
vim.opt.undofile = true

-- Automatically enable csv mode when opening csv
vim.api.nvim_create_autocmd("FileType", {
	pattern = "csv",
	desc = "Enable CSV View on .csv files",
	callback = function()
		require("csvview").enable()
	end,
})

vim.diagnostic.config({
	virtual_text = false
})

vim.keymap.set('n', 'gd', function()
    require('telescope.builtin').lsp_definitions()
end, { desc = 'LSP Definitions' })
