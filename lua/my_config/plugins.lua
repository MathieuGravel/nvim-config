-- Automatically install and set up Packer
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
      'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.cmd([[packadd packer.nvim]])
end

local ok, packer = pcall(require, 'packer')
if not ok then
    return
end

-- Automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]]) 

return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Themes 
    use 'folke/tokyonight.nvim'
    -- Terminal
    use {'akinsho/toggleterm.nvim', tag = 'v2.*', config = function()
        require('toggleterm').setup()
    end}
    -- Utils
    use 'vim-airline/vim-airline'
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        packer.sync()
    end
end)


