-- Remove arrow
vim.keymap.set({'n', 'i', 'v'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'i', 'v'}, '<Right>', '<Nop>')

-- Switch tabs
vim.keymap.set('n', '<Tab>', '<CMD>tabnext<CR>')
vim.keymap.set('n', '<S-Tab>', '<CMD>tabprev<CR>')

-- Move Window
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize Window
vim.keymap.set('n', '<A-h>', '<CMD>vertical resize +3<CR>')
vim.keymap.set('n', '<A-j>', '<CMD>resize +3<CR>')
vim.keymap.set('n', '<A-k>', '<CMD>resize -3<CR>')
vim.keymap.set('n', '<A-l>', '<CMD>vertical resize -3<CR>')

-- Terminal
vim.keymap.set('n', '<Leader>tt', '<CMD>ToggleTerm<CR>')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Search Files
-- When in menu: Ctrl-s -> vertical split,
--               Ctrl-x -> horizontal split,
--               Ctrl-t -> new tab,
--               Default -> current tab
vim.keymap.set('n', '<leader>ff', '<CMD>Telescope find_files<CR>')

-- Search Commands
vim.keymap.set('n', '<Leader>fh', '<CMD>Telescope help_tags<CR>')

-- Toggle Explorer
-- refresh because deleting a file in terminal does not refrest the tree.
-- use !del in windows because feature not implemented yet.
vim.keymap.set('n', '<Leader>e', '<CMD>NvimTreeRefresh<CR><CMD>NvimTreeToggle<CR>')

-- TODO 
-- Pust resizeing with ctrl-alt and atl for navigation like scrolling.
