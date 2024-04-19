return {
  'nvim-neo-tree/neo-tree.nvim',

  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },

  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,

          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            '.DS_Store',
            '.git',
            '.github',
          },
        },
      },
      window = {
        position = 'current',
        mappings = {
          ['<C-c>'] = 'cancel',
        },
      },
    }
  end,
}
