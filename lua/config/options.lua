vim.g.clipboard = {
  name = 'wl-clipboard',
  copy = {
     ['+'] = 'wl-copy',
     ['*'] = 'wl-copy',
   },
  paste = {
     ['+'] = 'wl-paste',
     ['*'] = 'wl-paste',
  },
  cache_enabled = 0,
}
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
