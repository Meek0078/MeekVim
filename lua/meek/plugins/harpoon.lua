return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()

        local keymap = vim.keymap
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        keymap.set("n", "<leader>ha", mark.add_file, { desc = "Add File to Harpoon" })
        keymap.set("n", "<leader>hm", ui.toggle_quick_menu, { desc = "Toggle Quick Menu" })

        keymap.set("n", "<M-1>", function() ui.nav_file(1) end, { desc = "Switch to 1st Harpoon File" })
        keymap.set("n", "<M-2>", function() ui.nav_file(2) end, { desc = "Switch to 2nd Harpoon File" })
        keymap.set("n", "<M-3>", function() ui.nav_file(3) end, { desc = "Switch to 3rd Harpoon File" })
        keymap.set("n", "<M-4>", function() ui.nav_file(4) end, { desc = "Switch to 4th Harpoon File" })
    end,
}
