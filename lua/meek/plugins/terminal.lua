return {
    'akinsho/toggleterm.nvim', 
    version = "*", 

    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            direction = "float", -- "vertical" | "float" | "tab"
            float_opts = {
                border = "curved",
            }, 
            shade_terminals = true,
            start_in_insert = true,
            insert_mappings = true,
            persist_size = true,
            persist_mode = true,
        })

        local keymap = vim.keymap

        keymap.set({"t", "n"}, "<C-7>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
    end,
}
