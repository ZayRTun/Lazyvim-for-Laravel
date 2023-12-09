return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = {
            contrast = "dark",
            transparent_mode = true,
        },
    },
    {
        "tokyonight.nvim",
        priority = 1000,
        opts = function()
            return {
                style = "night",
            }
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox",
        },
    },
}
