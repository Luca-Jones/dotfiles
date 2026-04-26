-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Leader key = space
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')


-- Window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', opts)
vim.keymap.set('n', '<leader>j', '<C-w>j', opts)
vim.keymap.set('n', '<leader>k', '<C-w>k', opts)
vim.keymap.set('n', '<leader>l', '<C-w>l', opts)

vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Open new windows
vim.keymap.set('n', '<leader>s', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<leader>v', '<cmd>split<cr>')

-- Resize with arrows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Ctrl z and Ctrl y because i'm a noob
vim.keymap.set({'n', 'i', 'v'}, '<C-z>', '<cmd>undo<cr>', { desc = 'Undo' })
vim.keymap.set({'n', 'i', 'v'}, '<C-y>', '<cmd>redo<cr>', { desc = 'Redo' })
vim.keymap.set({'n', 'i'}, '<C-a>', '<esc>GVgg', { desc = 'Select all' })

-- rename symbol
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'LSP rename' })

-- Open zathura on LateX output
vim.keymap.set(
	"n", "<leader>z", 
	function()
		local pdf = vim.fn.expand("%:p:r") .. ".pdf"
		vim.fn.jobstart({ "zathura", pdf }, { detach = true })
		vim.fn.jobstart({ "latexmk", "-pdf", "-pvc", vim.fn.expand("%:p")}, { detach = false, shell = true})
	end, 
	{ desc = "open pdf in zathura" }
)

-----------------
-- Visual mode --
-----------------

-- stay in visual mode when indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------

vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })
