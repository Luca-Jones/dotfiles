-- Regular NVIM --
require("keymaps")
require("options")

-- LAZY NVIM --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins") -- searches in lua/ finds plugins and calls setup() on all of them 

-- COLORSCHEME
vim.cmd([[colorscheme everforest]])
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- LSP
vim.lsp.config(
    "*",
    {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
    }
)
vim.diagnostic.config({ virtual_text = true })
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float()
    end,
})

