return {
    "stevearc/oil.nvim",
    opts = {
        view_options = {
            show_hidden = true,
        },
        keymaps = {
            ["q"] = "actions.close",
            ["<Esc>"] = "actions.close",
        },
    },
    keys = {
        {"-", "<cmd>Oil<cr>"}
    },
}

