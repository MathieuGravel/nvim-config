local ok, nvim_web_devicons = pcall(require, 'nvim-web-devicons')
if not ok then return end

nvim_web_devicons.get_icons()
