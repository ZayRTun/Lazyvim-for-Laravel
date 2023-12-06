return {
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        opts = {
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg = "#16161D",
                            bg_gutter = "none",
                        },
                    },
                },
            },
        },
    },
    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            contrast = "dark",
            transparent_mode = false,
        },
    },
    {
        "tokyonight.nvim",
        priority = 1000,
        opts = function()
            return {
                style = "night",
                on_highlights = function(hl, c)
                    hl.CursorLineNr = { fg = c.orange, bold = true }
                    -- hl.LineNr = { fg = c.orange, bold = true }
                    hl.LineNrAbove = { fg = c.fg_gutter }
                    hl.LineNrBelow = { fg = c.fg_gutter }
                    local prompt = "#2d3149"
                    hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
                    hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
                    hl.TelescopePromptNormal = { bg = prompt }
                    hl.TelescopePromptBorder = { bg = prompt, fg = prompt }
                    hl.TelescopePromptTitle = { bg = c.fg_gutter, fg = c.orange }
                    hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
                    hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
                end,
            }
        end,
    },
    {
        "catppuccin/nvim",
        enabled = false,
        lazy = true,
        name = "catppuccin",
        opts = {
            integrations = {
                aerial = true,
                alpha = true,
                cmp = true,
                dashboard = true,
                flash = true,
                gitsigns = true,
                headlines = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                leap = true,
                lsp_trouble = true,
                mason = true,
                markdown = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true, custom_bg = "lualine" },
                neotest = true,
                neotree = true,
                noice = true,
                notify = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                which_key = true,
            },
        },
        {
            "projekt0n/github-nvim-theme",
            lazy = false,
            priority = 1000,
        },
    },

    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "github_dark_default", -- Change this to another theme
        },
    },
}
