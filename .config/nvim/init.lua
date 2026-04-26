-- Regular NVIM --
require("config.keymaps")
require("config.options")

-- LAZY NVIM --
require("config.lazy")

-- LSP
require("config.lsp")

-- COLORSCHEME
vim.cmd([[colorscheme everforest]])
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
