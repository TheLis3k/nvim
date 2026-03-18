local function open_ai(model)
    vim.cmd("vsplit")
    vim.cmd("term ollama run " .. model)
    vim.cmd("startinsert")
end

local function send_visual_to_ai()
    vim.cmd('normal! "ay')
    local selection = vim.fn.getreg('a')
    vim.cmd("wincmd l")
    vim.api.nvim_chan_send(vim.b.terminal_job_id, selection .. "\n")
    vim.cmd("wincmd h")
end

vim.keymap.set("n", "<leader>af", function() open_ai("arch-coder") end, { desc = "AI Fast (Arch Coder)" })
vim.keymap.set("v", "<leader>v", send_visual_to_ai, { desc = "Send to AI" })
