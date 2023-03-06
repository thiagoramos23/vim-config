local builtin = require('telescope.builtin')
require("telescope").load_extension("git_worktree")
vim.api.nvim_set_keymap('n', 'gw',
  "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>gw',
  "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { noremap = true, silent = true }
)
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>.', builtin.buffers, {})
--vim.keymap.set('n', '<C-f>', function()
  --builtin.grep_string({ search = vim.fn.input("Grep > ") });
--end)
