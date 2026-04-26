return {
	{
		"mason-org/mason.nvim",
		opts = {},
		dependencies = { "saghen/blink.cmp" }
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = { "mason-org/mason.nvim" },
		opts = {
			ensure_installed = {
				"asm_lsp",
				"bashls",
				"clangd",
				"jdtls",
				"lua_ls",
				"texlab",
			},
			automatic_enable = {
				exclude = {
					"jdtls"
				}
			},
		},
	},
	{ "mfussenegger/nvim-jdtls" },
}
