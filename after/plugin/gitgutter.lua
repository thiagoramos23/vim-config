local opts = { silent = true }

vim.keymap.set("n", "<leader>gt", ":GitGutterLineHighlightsToggle<CR>", opts)
vim.keymap.set("n", "<leader>gc", ":GitGutterPreviewHunk<CR>", opts)
