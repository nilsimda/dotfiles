return {
    -- Tree-sitter configuration
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "gotmpl", "html" })
            end
        end,
    },

    -- Filetype detection for gotmpl
    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                init_options = function()
                    vim.filetype.add({
                        extension = {
                            gotmpl = "gotmpl",
                            tmpl = "gotmpl", -- Add this if your files use .tmpl extension
                        },
                    })
                end,
            },
        },
    },
}
