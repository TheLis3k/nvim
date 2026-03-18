return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git Status" })
        vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>", { desc = "Git Diff" })
    end
}
