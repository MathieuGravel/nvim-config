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

    use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
    use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

    use 'folke/tokyonight.nvim'
    use {
        'akinsho/toggleterm.nvim', tag = 'v2.*', config = function()
            require('toggleterm').setup()
        end
    }
    use 'vim-airline/vim-airline'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    -- LSP and completion 
    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'williamboman/nvim-lsp-installer' -- Simple to use language server installer
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin 

    -- Snippets
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'rafamadriz/friendly-snippets'

    -- Automatically set up your configuration after cloning packer.nvim
    if packer_bootstrap then
        packer.sync()
    end
end)


