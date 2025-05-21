return {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
        local lspconfig_configs = require("lspconfig.configs")

        require("typescript-tools").setup({})
    end,
}
