return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            php = { "php_cs_fixer" },
            javascript = { "prettier" },
            typescript = { "prettier" },
            html = { "prettier" },
            css = { "prettier" },
            ["_"] = { "trim_whitespace" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
