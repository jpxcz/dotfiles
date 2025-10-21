-- colorscheme

return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                -- flavor = "latte",
                background = {
                    dark = "mocha",
                },
                color_overrides = {
                    all = {
                        base = "#282C34",
                        blue = "#61AFEF",
                        maroon = "#D86972",
                        mauve = "#C678DD",
                        yellow = "#E5C07B",
                    },
                },
                custom_highlights = {
                    ["@variable"] = { fg = "#E5C07B" },
                    ["@keyword.export"] = { fg = "#C678DD" },
                    ["NeoTreeCursorLine"] = { bg = "#3D3F4F" },
                },
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
