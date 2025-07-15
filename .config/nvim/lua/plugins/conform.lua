return {
    { -- Autoformat
        "stevearc/conform.nvim",
        lazy = false,
        keys = {
            {
                "<leader>fm",
                function()
                    require("conform").format({ async = true, lsp_fallback = true })
                end,
                mode = "",
                desc = "[F]ormat buffer",
            },
        },
        opts = {
            notify_on_error = true,
            formatters_by_ft = {
                lua = { "stylua" },
                sh = { "shfmt" },
                cpp = { "clang_format" },
                python = { "isort", "ruff" },
                javascript = { "prettier" },
                go = { "gofmt" },
            },
            formatters = {
                clang_format = {
                    prepend_args = { "--style=file", "--fallback-style=LLVM" },
                },
                shfmt = {
                    prepend_args = { "-i", "4" },
                },
            },
        },
    },
}
