local keymap = vim.keymap

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open diagnostic float' })

keymap.set('n', '<leader>cf', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = '[F]ormat buffer' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
keymap.set('n', '<space>-', require('oil').toggle_float, { desc = 'Open parent directory in floating window' })

keymap.set('n', '<leader>w', '<cmd> w <CR>', { desc = 'Save file' })
keymap.set('n', 'x', '"_x', { desc = 'Delete single character without copying into regiser' })
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

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
