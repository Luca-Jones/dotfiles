return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "*",
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		-- 'super-tab' for mappings similar to VSCode (tab to accept)
		-- 'enter' for enter to accept
		-- 'none' for no mappings
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		-- See :h blink-cmp-config-keymap for defining your own keymap
		keymap = {
			preset = "enter",
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<S-Tab>"] = { "select_prev", "fallback" },
			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },
			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		-- Sources are configured via the sources.providers table
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		completion = {
			keyword = { range = "prefix" },
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
			trigger = { show_on_trigger_character = true },
			documentation = {
				auto_show = true,
			},
		},
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}

