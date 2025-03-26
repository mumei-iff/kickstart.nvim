local keymap = vim.keymap

keymap.set('n', '<leader>s', '<cmd> w <CR>', { desc = 'Save file' })
keymap.set('n', 'x', '"_x', { desc = 'Delete single character without copying into regiser' })
keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Navigate to next buffer' })
keymap.set('n', '<S-Tab>', ':bnext<CR>', { desc = 'Navigate to previous buffer' })
keymap.set('n', '<leader>x', ':bdelete <CR>', { desc = 'Close buffer' })
keymap.set('n', '<leader>b', '<cmd> enew <CR>', { desc = 'New buffer' })

keymap.set('n', '∆', ':m .+1<CR>==', { desc = 'Move line up' })
keymap.set('n', '˚', ':m .-2<CR>==', { desc = 'Move line down' })
keymap.set('v', '∆', ":m '>+1<CR>gv=gv", { desc = 'Move line up' }) -- move line up(v)
keymap.set('v', '˚', ":m '<-2<CR>gv=gv", { desc = 'Move line up' }) -- move line down(v)

keymap.set({ 'n', 't' }, '†', '<cmd>ToggleTerm<CR>', { silent = true })

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')
