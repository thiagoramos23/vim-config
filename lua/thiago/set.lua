vim.opt.encoding = "utf-8"
vim.opt.guicursor = ""
vim.opt.modeline = true

vim.opt.cursorcolumn = true
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.ignorecase = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 0
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "130"
vim.opt.wildmenu = true
vim.opt.hidden = true

vim.cmd([[
  filetype plugin indent on
  syntax on
]])
vim.cmd([[set termguicolors]])
vim.cmd([[set clipboard+=unnamed]])

vim.opt.foldlevel = 3
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.opt.splitright = true
vim.opt.errorbells = false
vim.opt.showmode = false
