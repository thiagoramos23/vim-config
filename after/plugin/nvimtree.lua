local config = {
    view = {
        width = 60,
        mappings = {
            custom_only = false,
            list = {
                { key = "l", action = "edit", action_cb = edit_or_open },
                { key = "L", action = "vsplit_preview", action_cb = vsplit_preview },
                { key = "h", action = "close_node" },
                { key = "H", action = "collapse_all", action_cb = collapse_all }
            }
        },
    },
    actions = {
        open_file = {
            quit_on_open = false
        }
    }
}

--vim.api.nvim_set_keymap("n", "<space>e", ":NvimTreeToggle<cr>" ,{silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<space>e", ":NvimTreeFindFileToggle<cr>" ,{silent = true, noremap = true})
require('nvim-tree').setup(config)
