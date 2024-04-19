vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.wgsl' },
  command = 'set filetype=wgsl',
})
