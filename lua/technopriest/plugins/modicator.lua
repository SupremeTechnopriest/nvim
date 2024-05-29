return {
  'mawkler/modicator.nvim',
  dependencies = 'loctvl842/monokai-pro.nvim',
  init = function()
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
  end,
  opts = {
    highlights = {
      defaults = {
        bold = true
      }
    }
  }
}
