return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

    config = function()
        local keymap = vim.keymap

        keymap.set(
            "n",
            "<leader>fl",
            ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
            { desc = "Telescope File Browser" }
        )
    end,
}
