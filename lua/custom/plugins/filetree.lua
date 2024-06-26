-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        filesystem = {
          follow_current_file = true,
          filtered_items = {
            visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
        use_libuv_file_watcher = true,
        vim.keymap.set('n', '<leader>ee', '<Cmd>Neotree toggle<CR>'),
        vim.keymap.set('n', '<leader>ec', '<Cmd>Neotree close<CR>'),
        vim.keymap.set('n', '<leader>eo', '<Cmd>Neotree show<CR>'),
      }
    end,
  },
}
