require("config.options")
require("config.keymaps")


vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter"},
	{ src = "https://github.com/neovim/nvim-lspconfig"},
	{ src = "https://github.com/rose-pine/neovim"},
	{ src = "https://github.com/windwp/nvim-autopairs"},
	{ src = "https://github.com/nvim-mini/mini.nvim"},
	{ src = "https://github.com/nvim-telescope/telescope.nvim"},	
	{ src = "https://github.com/nvim-lua/plenary.nvim"},	
	{ src = "https://github.com/windwp/nvim-autopairs"},	
	{ src = "https://github.com/windwp/nvim-ts-autotag"},	
	{ src = "https://github.com/mason-org/mason.nvim"},	
})
vim.pack.add({
    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },
    { src = "https://github.com/hrsh7th/cmp-cmdline" },
    { src = "https://github.com/L3MON4D3/LuaSnip" },
})



require("plugins.treesitter")
require("plugins.rosepine")
require("plugins.cmp")
require("plugins.telescope")

require("nvim-autopairs").setup()
require("nvim-ts-autotag").setup()
require("mason").setup()

require("mini.surround").setup()
require("mini.move").setup()
require("mini.snippets").setup()

-- LSP
vim.lsp.enable("ts_ls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("emmet_language_server")
vim.lsp.enable("bashls")
vim.lsp.enable("lua_ls")


vim.api.nvim_set_hl(0, "CursorLine", { fg = "NONE", bg = "#00202e" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#886300" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#004786" })
vim.api.nvim_set_hl(0, "Normal", { bg = "#0c080a" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
