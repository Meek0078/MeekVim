return {
    "scottmckendry/cyberdream.nvim",
    priority = 1000,
    config = function()

        require("cyberdream").setup({
            variant = "default",

            transparent = "false"
        })

        vim.cmd("colorscheme cyberdream")
    end
}
