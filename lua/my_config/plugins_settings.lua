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

-- williamboman/nvim-lsp-installer 
local ok, nvim_lsp_installer = pcall(require, 'nvim-lsp-installer')
if ok then
    nvim_lsp_installer.setup {
        ui = { border = 'rounded' }
    }
end

-- neovim/nvim-lspconfig 
-- hrsh7th/cmp-nvim-lsp 
local has_lspconfig, lspconfig = pcall(require, 'lspconfig')
local has_cmp_nvim_lsp, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if has_lspconfig and has_cmp_nvim_lsp then 
    
    local config = { 
        capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()), 
    }
     
    for _, server in pairs(nvim_lsp_installer.get_installed_servers()) do
        local server_name = server.name
        local ok, server_config = pcall(require, 'my_config.lsp.' .. server_name)
        if ok then 
            config = vim.tbl_deep_extend('force', server_config, config)
        end
        lspconfig[server_name].setup(config)
    end
end

