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
