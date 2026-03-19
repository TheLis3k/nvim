return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")

        ts.setup({
            install_dir = vim.fn.stdpath("data") .. "/site",
    	    indent = { enable = true },

        })

        ts.install({
            "html", "css", "javascript", "typescript",
            "java", "php", "json", "yaml", "python", "vimdoc"
        })

        vim.api.nvim_create_autocmd('FileType', {
            callback = function()
                local ok, _ = pcall(vim.treesitter.start)
            end,
        })
    end,
}
