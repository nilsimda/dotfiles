return {
    -- Add the templ LSP server
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                -- Configure templ server
                templ = {
                    -- Any specific server settings can go here
                    filetypes = { "templ" },
                },
            },
        },
    },
    -- Make sure templ filetype is recognized
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "templ" })
            end
        end,
    },
    -- Ensure correct filetype detection
    {
        "LazyVim/LazyVim",
        opts = {
            -- Add the code below to register .templ extension with templ filetype
            autocmds = {
                {
                    "BufRead,BufNewFile",
                    {
                        pattern = "*.templ",
                        command = "setf templ",
                    },
                },
            },
        },
    },
}
