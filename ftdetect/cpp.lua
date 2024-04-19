vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = { '*.cc', '*.cpp', '*.cxx', '*.h', '*.hpp' },
  command = 'set filetype=cpp',
})
