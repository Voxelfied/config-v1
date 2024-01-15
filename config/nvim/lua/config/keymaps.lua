-- NeoVim Keymaps - Windows/Navigation
vim.api.nvim_set_keymap('n', '<leader>i>', '<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>[', ':wincmd w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>]', ':wincmd W<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':wincmd W<CR>', { noremap = true, silent = true }) 

-- NeoVim Keymaps - Document/Selection
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>ggVG', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Esc>V', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ')', '$l', { noremap = true, silent = true })

-- NeoVim Keymaps - Actions
vim.api.nvim_set_keymap('n', '<leader>rr', ':luafile %<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bb', ':lua delete_current_file()<CR>', {noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Lazy Keymaps
vim.api.nvim_set_keymap('n', '<C-c>l', ':Lazy<CR>', { noremap = true, silent = true })

-- Mason Keymaps
vim.api.nvim_set_keymap('n', '<C-c>m', ':Mason<CR>', { noremap = true, silent = true })

-- NvimTree Keymaps
vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ef', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ec', ':NvimTreeCollapse<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>er', ':NvimTreeRefresh<CR>', { noremap = true, silent = true })

-- NvimTelescope Keymaps
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })

-- Bufferline Keymaps
vim.api.nvim_set_keymap('n', '<leader>tt', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew | NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', ':tabp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':tabn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', ':tabnew %<CR>', { noremap = true, silent = true })

-- ToggleTerm Keymaps
vim.api.nvim_set_keymap('n', '<leader>tr', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':ToggleTerm size=25 dir=~/Users/voxelfied/Desktop/Dev direction=horizontal name=terminal-', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>ty', ':ToggleTerm size=50 dir=~/Users/voxelfied/Desktop/Dev direction=vertical name=terminal-', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-r>', ':ToggleTerm<CR>', { noremap = true, silent = true})

-- Neoformat Keymaps
vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true })

-- Color Picker Keymaps
vim.api.nvim_set_keymap('n', '<leader>cp', ':PickColor<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-c>', ':PickColorInsert<CR>', { noremap = true, silent = true })

-- Telescope Tabs
vim.api.nvim_set_keymap('n', '<leader>tl', ':Telescope telescope-tabs list_tabs<CR>', { noremap = true, silent = true })

-- ZenMode Keymaps
vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })

require("config.utils")
