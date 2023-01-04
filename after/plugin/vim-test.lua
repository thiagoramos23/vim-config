local opts = { silent = true }
local g = vim.g

g["rspec_runner"] = "os_x_iterm2"
g["test#strategy"] = "vimux"
g["VimuxHeight"] = "30"

vim.keymap.set("n", "<leader>rn", function()
  g["test#elixir#exunit#executable"] = "mix test"
  vim.cmd [[exec ":TestNearest"]]
end)
vim.keymap.set("n", "<leader>rf", function()
  g["test#elixir#exunit#executable"] = "mix test"
  vim.cmd [[exec ":TestFile"]]
end)
vim.keymap.set("n", "<leader>rs", function()
  g["test#elixir#exunit#executable"] = "mix test"
  vim.cmd [[exec ":TestSuite"]]
end)
vim.keymap.set("n", "<leader>rl", function()
  g["test#elixir#exunit#executable"] = "mix test"
  vim.cmd [[exec ":TestLast"]]
end)
vim.keymap.set("n", "<leader>rv", function()
  g["test#elixir#exunit#executable"] = "mix test"
  vim.cmd [[exec ":TestVisit"]]
end)
vim.keymap.set("n", "<leader>rd", function()
  g["test#elixir#exunit#executable"] = "iex -S mix test"
  vim.cmd [[exec ":TestNearest" .. "--trace"]]
end)

