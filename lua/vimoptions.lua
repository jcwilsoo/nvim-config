
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


-- Relativenumbers and absolute numbers
vim.o.relativenumber = true
vim.o.number = true

vim.opt.scrolloff = 10

-- Highlight when yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('ks-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

