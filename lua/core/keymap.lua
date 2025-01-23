vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>pb", ":Telescope buffers<CR>", {})
vim.keymap.set("n", "<leader>ps", ":Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Split horizontal' })
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split vertical' })

vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true })
