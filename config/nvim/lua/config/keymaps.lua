function toggleRelativeNumber() 
	vim.o.relativenumber = not vim.o.relativenumber
end


vim.keymap.set("n", "<leader>n", toggleRelativeNumber)

vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
