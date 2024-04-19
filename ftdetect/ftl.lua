vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.ftl' },
  command = 'set filetype=fluent',
})
