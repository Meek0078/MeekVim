return {
    {
        "scottmckendry/cyberdream.nvim",
        priority = 0,
        config = function()
            require("cyberdream").setup({
                variant = "default",

                transparent = false,
            })
        end,
    },
    {
        "pineapplegiant/spaceduck",
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "frappe",
            })

            vim.cmd.colorscheme("catppuccin")
        end,
    }
}
