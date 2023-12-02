return {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "stevearc/dressing.nvim",
    },
    config = function()
        require("flutter-tools").setup({})
        require("telescope").load_extension("fzf")
    end,
    keys = {
        {
            "<leader>tf",
            "<cmd>Telescope flutter commands<cr>",
            desc = "Open Flutter Commands",
        },
    },
}

-- keys = {
--     {
--         "<leader>fd",
--         "<cmd>FlutterDevices<cr>",
--         desc = "Flutter Devices",
--     },
--     {
--         "<leader>fe",
--         "<cmd>FlutterEmulators<cr>",
--         desc = "Flutter Emulators",
--     },
-- },
-- vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>")
-- -- c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
-- -- d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
-- -- e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
-- -- r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
-- -- R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
-- -- q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
-- -- v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
