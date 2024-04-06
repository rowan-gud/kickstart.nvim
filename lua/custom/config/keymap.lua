local map = function(mode, key, cmd, opts)
  return vim.keymap.set(mode, key, cmd, opts)
end

local nmap = function(key, cmd, opts)
  return map('n', key, cmd, opts)
end

local vmap = function(key, cmd, opts)
  return map('v', key, cmd, opts)
end

local nvmap = function(key, cmd, opts)
  return map({ 'n', 'v' }, key, cmd, opts)
end

-- Neotree

nmap('<leader>pv', '<cmd>Neotree filesystem position=float<CR>')
nmap('<leader>pb', '<cmd>Neotree buffers position=float<CR>')
nmap('<leader>pg', '<cmd>Neotree git_status position=float<CR>')

-- Remapping

-- Move lines up and down
vmap('J', ":m '>+1<CR>gv=gv")
vmap('K', ":m '<-2<CR>gv=gv")

-- Put cursor in the middle of the screen when jumping
nmap('<C-d>', '<C-d>zz')
nmap('<C-u>', '<C-u>zz')

-- Copy to system clipboard
nvmap('<leader>y', [["+y]])
nvmap('<leader>yy', [["+yy]])
nvmap('<leader>Y', [["+Y]])

-- Paste without overriding buffer
map('x', '<leader>p', [["_dP]])

-- Delete without overriding buffer
nvmap('<leader>d', [["_d]])
nmap('<leader>dd', [["_dd]])

-- Redo with shift-u
nmap('U', '<C-r>')
