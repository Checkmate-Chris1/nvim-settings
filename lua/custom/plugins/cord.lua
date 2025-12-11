return {
  'vyfor/cord.nvim',
  lazy = false,
  build = ':Cord update',
  opts = {
    editor = {
      -- client = "nvchad",
      client = 'neovim',
    },
    display = {
      theme = 'catppuccin',
    },
    idle = {
      -- timeout - this is 5 min (in ms)
      timeout = 300000,
    },
    text = {
      workspace = '',
      editing = function(opts)
        return 'Editing CheckmateChris1 stuff'
      end,
    },
  },
}
