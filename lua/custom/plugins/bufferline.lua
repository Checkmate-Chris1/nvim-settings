return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        separator_style = 'slant',
        highlights = {
          separator = {
            fg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
            bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
          },
          separator_selected = {
            fg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
            bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
          },
          separator_visible = {
            fg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
            bg = vim.api.nvim_get_hl(0, { name = 'Normal' }).bg,
          },
        },
        show_buffer_close_icons = false,
        show_close_icon = false,
        always_show_bufferline = false,
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }

    -- buffer tab area bg color is hardcoded b/c vscode theme stinky
    vim.api.nvim_set_hl(0, 'BufferLineFill', { bg = '#111111' })

    -- switcher maps
    vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
    vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
  end,
}
