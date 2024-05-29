return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
     animation = true,
     insert_at_start = true,
     no_name_title = 'No Name'
  }
}
