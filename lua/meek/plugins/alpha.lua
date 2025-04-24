return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set Dashboard Header
        dashboard.section.header.val = {
                "███╗   ███╗███████╗███████╗██╗  ██╗██╗   ██╗██╗███╗   ███╗",
                "████╗ ████║██╔════╝██╔════╝██║ ██╔╝██║   ██║██║████╗ ████║",
                "██╔████╔██║█████╗  █████╗  █████╔╝ ██║   ██║██║██╔████╔██║",
                "██║╚██╔╝██║██╔══╝  ██╔══╝  ██╔═██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║",
                "██║ ╚═╝ ██║███████╗███████╗██║  ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║",
                "╚═╝     ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
                "                                                          ",
        }

        alpha.setup(dashboard.opts)

        -- disable folding on this buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
