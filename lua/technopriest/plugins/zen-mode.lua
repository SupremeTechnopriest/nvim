return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 1,
      options = {
        foldcolumn = '0'
      }
    },
    plugins = {
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      kitty = {
        enabled = false,
        font = '+6'
      }
    }
  }
}
