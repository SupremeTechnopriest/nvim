return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 
    'nvim-tree/nvim-web-devicons'
  },
  config = function ()
    require('lualine').setup({
      options = {
        theme = 'monokai-pro',
        disabled_filetypes = {
          statusline = {
            'neo-tree',
            'dashboard',
            'undotree'
          }
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      }
    })
  end
}
