return {
  "folke/tokyonight.nvim",
  config = function()
    vim.cmd.colorscheme("tokyonight")
    vim.api.nvim_set_hl(0, "Normal", { bg = "#010305", fg = "#d9d0b4" })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#885500" })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffa600" })
  end
}
