vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.twig", "*.html.twig" },
    callback = function()
        vim.bo.filetype = "twig"
    end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = { "i:*" },
    callback = function()
        local ok, copilot = pcall(require, "copilot.suggestion")
        if ok then
            copilot.dismiss()
        end
    end,
})
