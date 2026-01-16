return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
      local TS = require("nvim-treesitter")
      TS.setup({
          -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
          install_dir = vim.fn.stdpath('data') .. '/site'
      })   
      TS.install({ "html", "css", "javscript", "typescript", "lua" }):wait(300000) -- wait max. 5 minutes
  end,
}
