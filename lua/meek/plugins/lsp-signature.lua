return {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
        local lsp_signature = require("lsp_signature")

        lsp_signature.setup({})

        lsp_signature.on_attach({
            bind = true,
            floating_window = true,
            hint_enable = true,
            handler_opts = {
                border = "rounded",
            },
        })

    end,
}
