vim.g.mapleader = ","
vim.o.clipboard = "unnamedplus"

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("n", "vv", ":vsp<CR>", opts)
vim.keymap.set("n", "ss", ":sp<CR>", opts)

vim.keymap.set("n", "<leader>qq", vim.cmd.nohlsearch, opts)

vim.keymap.set("n", "<Leader>co", ":copen 20<CR>", opts)
vim.keymap.set("n", "<Leader>cl", ":cexpr []<CR>", opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate Buffers
vim.keymap.set("n", "<leader>v", ":bnext<CR>", opts)
vim.keymap.set("n", "<leader>z", ":bprevious<CR>", opts)
vim.keymap.set("n", "<leader>d", ":BufDel<CR>", opts)
vim.keymap.set("n", "<C-s>", ":bpick<CR>", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yankies
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>o", function()
  vim.cmd [[exec ":%bd\|e#\|bd#"]]
end)

-- Bar Bar Mappings

-- Move to previous/next
vim.keymap.set("n", "<leader>z", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<leader>v", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
vim.keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
vim.keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<leader>l", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
vim.keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
vim.keymap.set("n", "<C-s>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
vim.keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
vim.keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
vim.keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
vim.keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

