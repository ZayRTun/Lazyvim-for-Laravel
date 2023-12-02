local util = require("conform.util")
return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            php = { "pint" },
            blade = { "blade-formatter" },
            javascript = { "prettierd" },
            json = { "prettier" },
            yaml = { "prettier" },
            markdown = { "prettier" },
            lua = { "stylua" },
            python = { "isort", "black" },
        },

        formatters = {
            injected = { options = { ignore_errors = true } },

            ["blade-formatter"] = {
                command = "blade-formatter",
                args = {
                    "--write",
                    "$FILENAME",
                    "--wrap-line-length",
                    9999,
                    "--wrap-attributes",
                    "preserve-aligned",
                },
                cwd = util.root_file({
                    ".editorconfig",
                    "composer.json",
                    "package.json",
                }),
                stdin = false,
            },

            pint = {
                meta = {
                    url = "https://github.com/laravel/pint",
                    description = "Laravel Pint is an opinionated PHP code style fixer for minimalists. Pint is built on top of PHP-CS-Fixer and makes it simple to ensure that your code style stays clean and consistent.",
                },
                command = util.find_executable({
                    vim.fn.stdpath("data") .. "/mason/bin/pint",
                    "vendor/bin/pint",
                }, "pint"),
                args = { "$FILENAME" },
                stdin = false,
            },
        },
    },
}
