local ok, toggleterm = pcall(require, 'toggleterm')
if not ok then return end

toggleterm.setup{
    shell = vim.g.shell,
    start_in_insert = true,
    direction = 'horizontal',
    size = 32
}
