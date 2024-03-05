return {
  'phaazon/hop.nvim',
  event = 'BufRead',
  config = function()
    require('config.hop')
  end,
}
