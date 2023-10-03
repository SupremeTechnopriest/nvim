return {
  'mawkler/modicator.nvim',
  dependencies = 'loctvl842/monokai-pro.nvim',
  config = function()
    require('modicator').setup()
  end
}
