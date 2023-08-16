

local keymap = vim.keymap.set
local opts = { silent = true }

keymap("n", "<leader>f", ":Neotree source=filesystem toggle=true dir=%:p:h<CR>", opts)
