return {
    {

        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 1000, -- 2s delay
                    keymap = {
                        accept = "<Tab>",
                        dismiss = "<C-]>",
                        next = "<M-]>",
                        prev = "<M-[>",
                    },
                },
                panel = { enabled = false },
            })
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        dependencies = { "zbirenbaum/copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end,
    },
}


