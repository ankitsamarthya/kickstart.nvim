return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require('bufferline').setup {
        options = {
          mode = 'buffers',
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              highlight = 'Directory',
              text_align = 'left',
              separator = true,
            },
          },
        },
      }
    end,
  },
}
