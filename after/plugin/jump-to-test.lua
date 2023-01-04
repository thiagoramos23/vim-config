local jump = require('jump-to-test-plugin')

vim.keymap.set("n", "<leader>jt", function() jump.openTest() end)
