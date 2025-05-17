--- Dvorak

-- Unmap d and D
vim.api.nvim_set_keymap('n', 'd', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'D', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'D', '<nop>', { noremap = true, silent = true })

-- Unmap n and N
vim.api.nvim_set_keymap('n', 'n', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'n', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'N', '<nop>', { noremap = true, silent = true })

-- Unmap HJKL
vim.api.nvim_set_keymap('n', 'h', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'l', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'h', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'j', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'l', '<nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'H', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', '<nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', '<nop>', { noremap = true, silent = true })

-- Remap lowercase d to k, and uppercase D to K
vim.api.nvim_set_keymap('n', 'k', 'd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', 'D', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'd', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', 'D', { noremap = true, silent = true })

-- Remap lowercase n to l, and uppercase N to L
vim.api.nvim_set_keymap('n', 'l', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', 'N', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'l', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', 'N', { noremap = true, silent = true })


-- Remap DHTN to HJKL
vim.api.nvim_set_keymap('n', 'd', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'h', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 't', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'n', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'd', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'h', 'j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 't', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'n', 'l', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', 'D', 'H', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'H', 'J', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'T', 'K', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'L', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'D', 'H', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'H', 'J', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'T', 'K', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'N', 'L', { noremap = true, silent = true })


-- Map "kk" to delete a line in normal mode
vim.api.nvim_set_keymap('n', 'jj', ':delete<CR>', { noremap = true, silent = true })
