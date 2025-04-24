return {
    "rmagatti/auto-session",
    config = function()
        local session = require("auto-session")

        session.setup({
            auto_restore_enabled = false,
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore Session" })
        keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save Current Session" })
    end,
}
