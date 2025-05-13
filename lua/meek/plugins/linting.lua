return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost" },
    config = function()
        local lint = require("lint")

        lint.linters_by_ft = {
            javascript = { "eslint_d" },
            lua = { "luacheck" },
            go = { "golangci_lint" }
        }

        -- Automatically lint on save or buffer read
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
