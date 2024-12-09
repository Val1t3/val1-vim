vim.g.mapleader = " "

-- Move
vim.keymap.set("n", "<C-h>", "b", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "w", { noremap = true, silent = true })

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle nvim-tree", noremap = true, silent = true })