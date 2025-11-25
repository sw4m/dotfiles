return {
	{
		"mrjones2014/smart-splits.nvim",
		build = "./kitty/install-kittens.bash",
		init = function()
			vim.keymap.set("n", "<A-h>", require("smart-splits").resize_left)
			vim.keymap.set("n", "<A-j>", require("smart-splits").resize_down)
			vim.keymap.set("n", "<A-k>", require("smart-splits").resize_up)
			vim.keymap.set("n", "<A-l>", require("smart-splits").resize_right)
			-- moving between splits
			vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
			vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
			vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
			vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
			vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)
		end,
	},
	-- {
	-- 	"Pocco81/auto-save.nvim",
	-- },
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		event = "BufEnter",
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},
		keys = {
			{
				"<c-b>n",
				mode = { "n", "v", "i" },
				"<cmd>BufferNext<cr>",
				desc = "Go to next buffer",
			},
			{
				"<c-b>p",
				mode = { "n", "v", "i" },
				"<cmd>BufferPrevious<cr>",
				desc = "Go to previous buffer",
			},
			{
				"<c-b>q",
				mode = { "n", "v", "i" },
				"<cmd>BufferClose<cr>",
				desc = "Close buffer",
			},
			{
				"<c-b>o",
				mode = { "n", "v", "i" },
				"<cmd>BufferPick<cr>",
				desc = "Open a buffer",
			},
			{
				"<c-b>p",
				mode = { "n", "v", "i" },
				"<cmd>BufferPin<cr>",
				desc = "Pin buffer",
			},
		},
	},
	{
		"mikavilpas/yazi.nvim",
		version = "*", -- use the latest stable version
		event = "VeryLazy",
		dependencies = {
			{ "nvim-lua/plenary.nvim", lazy = true },
		},
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"\\",
				mode = { "n", "v" },
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
			{
				-- Open in the current working directory
				"<leader>cw",
				"<cmd>Yazi cwd<cr>",
				desc = "Open the file manager in nvim's working directory",
			},
			{
				"<c-up>",
				"<cmd>Yazi toggle<cr>",
				desc = "Resume the last yazi session",
			},
		},
		---@type YaziConfig | {}
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = true,
			keymaps = {
				show_help = "<f1>",
			},
			float = false,
		},
		-- 👇 if you use `open_for_directories=true`, this is recommended
		init = function()
			-- mark netrw as loaded so it's not loaded at all.
			--
			-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
			vim.g.loaded_netrwPlugin = 1
		end,
	},
	{
		"lambdalisue/vim-suda",
		init = function()
			vim.g.suda_smart_edit = 1
		end,
	},
	{
		"wvffle/vimterm",
		keys = {
			{ "<F2>", "<cmd>call vimterm#toggle()<cr>", mode = "n", silent = true, noremap = true },
		},
	},
	{
		"mcauley-penney/tidy.nvim",
		opts = {
			enabled_on_save = false,
			only_modified_lines = false,
		},
		init = function()
			vim.keymap.set("n", "<leader>tr", require("tidy").run, {})
		end,
	},
}
