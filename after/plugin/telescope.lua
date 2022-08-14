local ok, telescope = pcall(require, 'telescope')
if not ok then return end

telescope.setup {
   defaults = {
       mappings = {
           i = {
               ['<C-s>'] = 'file_vsplit'
           }
       }
   }
}
