require("config.lazy")

local opt = vim.opt

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true

vim.keymap.set({ 'n' }, '<space><space>x', '<cmd>source %<CR>')
vim.keymap.set({ 'n' }, '<space>x', ':.lua<CR>')
vim.keymap.set({ 'v' }, '<space>x', ':lua<CR>')
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>")

vim.api.nvim_create_autocmd("CursorMoved", {
  callback = function()
    vim.cmd("nohlsearch")
  end,
})

-- Treesitter highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript', 'typescript', 'html', 'lua', 'css' },
  callback = function() vim.treesitter.start() end,
})
