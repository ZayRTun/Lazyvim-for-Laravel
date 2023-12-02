return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                emmet_language_server = {
                    filetypes = {
                        "html",
                        "blade",
                        "css",
                        "sass",
                        "scss",
                        "less",
                        "javascript",
                        "typescript",
                        "markdown",
                    },
                },
            },
        },
    },
}
