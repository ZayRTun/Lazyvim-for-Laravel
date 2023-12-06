return {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
        opts.options = {
            section_separators = { left = " ", right = " " },
            component_separators = { left = " ", right = " " },
        }
        opts.sections.lualine_a = {}
        opts.sections.lualine_b = {}
        opts.sections.lualine_y = {}
        opts.sections.lualine_z = {}

        table.insert(opts.sections.lualine_c, 1, "mode")
        table.insert(opts.sections.lualine_c, 2, "branch")
        table.insert(opts.sections.lualine_c, {
            "buffers",
            mode = 1,
            use_mode_colors = false,
        })

        table.insert(opts.sections.lualine_x, "location")
        table.insert(opts.sections.lualine_x, "progress")
        table.insert(opts.sections.lualine_x, "encoding")
        table.insert(opts.sections.lualine_x, "filetype")
        table.insert(opts.sections.lualine_x, "selectioncount")
    end,
}
