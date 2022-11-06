vim.g.mapleader = " " -- set the leaderkey (here it is <space>)

local keymap = vim.keymap -- for concisness

-- general keympas

keymap.set("i", "jk", "<ESC>") -- exit insert mode with jk or <ESC>

keymap.set("n", "<leader>nh", ":nohl<CR>") -- Clears search

keymap.set("n", "x", '"_x"') -- then deleting a char, then it will not set into the clip board

keymap.set("n", "<leader>+", "<C-a>") -- to increment numbers
keymap.set("n", "<leader>-", "<C-x>") -- to decrement numbers

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split window equal width and height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize current split window and restore it

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- to open/close NvimTree

-- telescope
keymap.set("n", "<leader>ff", "<cmd> Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope b:wquffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags