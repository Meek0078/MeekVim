vim.g.mapleader = " "

local keymap = vim.keymap

-- Disable the Search Highlighting with ESC
keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>") 

-- TODO Plugin:

-- Show todo items in the quickfix list
keymap.set("n", "<leader>tq", "<cmd>TodoQuickFix<cr>", { desc = "Todo (QuickFix)" })

-- Show todo items in telescope (if using telescope)
keymap.set("n", "<leader>ts", "<cmd>TodoTelescope<cr>", { desc = "Todo (Search)" })

-- Jump to next todo comment
keymap.set("n", "]t", function()
  require("todo-comments").jump_next()
end, { desc = "Next Todo Comment" })

-- Jump to previous todo comment
keymap.set("n", "[t", function()
  require("todo-comments").jump_prev()
end, { desc = "Previous Todo Comment" })

keymap.set("i", "<C-k>", function()
  vim.lsp.buf.signature_help()
end, { noremap = true, silent = true, desc = "Signature Help" })
