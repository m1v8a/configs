return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {"ts_ls", "html", "cssls", "emmet_language_server"}
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },

}
