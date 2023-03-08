-- fetch keymap function
local map = vim.api.nvim_set_keymap

-- change leader key
vim.g.mapleader = ","

-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- CTRL + s to save file
map('n', '<C-s>', [[:w<CR>]], {})
