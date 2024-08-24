map = vim.keymap.set

map('i', 'jk', '<ESC>', { desc = 'Exit insert mode' })

map('n', '<C-h>', '<C-w>h', { desc ='Go to the left window'})
map('n', '<C-l>', '<C-w>l', { desc ='Go to the right window'})
map('n', '<C-j>', '<C-w>j', { desc ='Go to the down window'})
map('n', '<C-k>', '<C-w>k', { desc ='Go to the up window'})
map('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down half a page and centre cursor'})
map('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up half a page and centre cursor'})

map('n', '<LEADER>y', '"+y',{ desc =  'Yank to system register'})
map('n', '<LEADER>Y', '"+y$',{ desc =  'Yank till end of line to system register'})
map('n', '<LEADER>p', '"+p', { desc = 'Put from system register'})
map('n', '<LEADER>P', '"+P', { desc = 'Put before from system register'})

map('v', '<LEADER>y', '"+y', { desc = 'Yank to system register'})
map('v', '<LEADER>p', '"+p', { desc = 'Put from system register'})
map('v', '<LEADER>P', '"+P', { desc = 'Put before from system register'})
