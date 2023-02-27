local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
  'tsserver',
  'sumneko_lua',
  'rust_analyzer',
  'elixirls',
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer= bufnr, remap = false}
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  --vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.configure('elixirls', {
  settings = {
    elixirLS = {
      filetypes = {"elixir", "eelixir"},
      dialyzerEnabled = false,
      fetchDeps = false,
      enableTestLenses = true,
    }
  }
})

lsp.configure('sumneko_lua', {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

vim.lsp.set_log_level("info")

vim.api.nvim_command("au BufWritePre *.ex lua vim.lsp.buf.format()")
vim.api.nvim_command("au BufWritePre *.exs lua vim.lsp.buf.format()")
vim.api.nvim_command("au BufWritePre *.heex lua vim.lsp.buf.format()")
vim.api.nvim_command("au InsertLeave,WinEnter * setlocal foldmethod=expr")
vim.api.nvim_command("au InsertEnter,WinLeave * setlocal foldmethod=manual")
vim.api.nvim_command("au InsertLeave,WinEnter,BufReadPost,FileReadPost * normal zR")

--local api = vim.api
--local M = {}
---- function to create a list of commands and convert them to autocommands
---------- This function is taken from https://github.com/norcalli/nvim_utils
--function M.nvim_create_augroups(definitions)
    --for group_name, definition in pairs(definitions) do
        --api.nvim_command('augroup '..group_name)
        --api.nvim_command('autocmd!')
        --for _, def in ipairs(definition) do
            --local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            --api.nvim_command(command)
        --end
        --api.nvim_command('augroup END')
    --end
--end


--local autoCommands = {
    ---- other autocommands
    --open_folds = {
        --{"BufReadPost,FileReadPost", "*", "normal zR"}
    --}
--}

--M.nvim_create_augroups(autoCommands)
