return {
  'zbirenbaum/copilot.lua',

  dependencies = {
    'hrsh7th/nvim-cmp',
  },
  cmd = 'Copilot',
  event = 'InsertEnter',

  config = function()
    require('copilot').setup {
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = '<S-Tab>',
        },
      },
    }
  end,
}
