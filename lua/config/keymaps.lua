-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move highlighted lines up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search terms in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

local Util = require("lazyvim.util")
vim.keymap.set("n", "<C-/>", function()
    Util.terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })

-- vim.keymap.set("n", "<leader>fd", "<cmd>FlutterDevices<cr>")
-- -- c = { "<cmd>Telescope flutter commands<cr>", "Open Flutter Commans" },
-- -- d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
-- -- e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
-- -- r = { "<cmd>FlutterReload<cr>", "Hot Reload App" },
-- -- R = { "<cmd>FlutterRestart<cr>", "Hot Restart app" },
-- -- q = { "<cmd>FlutterQuit<cr>", "Quit running application" },
-- -- v = { "<cmd>Telescope flutter fvm<cr>", "Flutter version" },
