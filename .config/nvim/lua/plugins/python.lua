-- In lua/plugins/python.lua
return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {
                    settings = {
                        python = {
                            analysis = {
                                typeCheckingMode = "off", -- Disable pyright's type checking
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                autoImportCompletions = true,
                            },
                        },
                    },
                },
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                python = { "mypy" },
            },
        },
    },
}
