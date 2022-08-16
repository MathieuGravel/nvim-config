-- kyazdani42/nvim-tree.lua 
local ok, nvim_tree = pcall(require, 'nvim-tree')
if ok then
    nvim_tree.setup()
end

-- nkyazdani42/vim-web-devicons 
local ok, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if ok then 
    nvim_web_devicons.get_icons()
end

-- nvim-telescope/telescope.nvim 
local ok, telescope = pcall(require, 'telescope')
if ok then 
    telescope.setup {
        defaults = {
            mappings = {
                i = {
                    ['<C-s>'] = 'file_vsplit'
                }
            }
        }
    }
end


-- akinsho/toggleterm.nvim 
local ok, toggleterm = pcall(require, 'toggleterm')
if ok then 
    toggleterm.setup{
        shell = vim.g.shell,
        start_in_insert = true,
        direction = 'horizontal',
        size = 32
    }
end

