return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup({
      padding = true,
      sticky = true,
      ignore = nil,
      toggler = {
        line = '/c',
        block = '/cb'
      },
      extra = {
        above = '/O',
        below = '/o',
        eol = '/a'
      },
      mappings = {
        basic = true,
        extra = true
      },
      pre_hook = nil,
      post_hook = nil
    })
  end
}
