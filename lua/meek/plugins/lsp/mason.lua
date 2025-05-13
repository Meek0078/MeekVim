return {
    "williamboman/mason.nvim",
    tag = "v1.10.0",
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
            tag = "v1.29.0",
        },
        {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        }
    },
    config = function()
        local mason = require("mason")

        local mason_lspconfig = require("mason-lspconfig")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup()

        local keymap = vim.keymap

        keymap.set("n", "<leader>cm", ":Mason<CR>", { desc = "Mason" })
    end,
}
