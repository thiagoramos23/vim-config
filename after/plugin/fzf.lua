vim.api.nvim_set_keymap('n', '<C-p>',
  "<cmd>lua require('fzf-lua').files()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>.',
  "<cmd>lua require('fzf-lua').buffers()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-q>',
  "<cmd>lua require('fzf-lua').quickfix()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-f>',
  "<cmd>lua require('fzf-lua').live_grep()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<C-g>',
  "<cmd>lua require('fzf-lua').git_commits()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>g',
  "<cmd>lua require('fzf-lua').grep_cword()<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>f',
  "<cmd>lua require('fzf-lua').grep_cWORD()<CR>",
  { noremap = true, silent = true }
)

