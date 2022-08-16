vim.opt.encoding = 'UTF-8'
vim.opt.modifiable = true 
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
-- vim.opt.colorcolumn = '80'
vim.opt.spell = true
vim.opt.fileformat = 'unix'
vim.opt.autowriteall = true


vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

local colorscheme = 'tokyonight'
vim.opt.background = 'dark'
vim.cmd("silent! colorscheme " .. colorscheme)

if vim.fn.has('win32') == 1 then
    vim.g.shell = 'powershell'
end
