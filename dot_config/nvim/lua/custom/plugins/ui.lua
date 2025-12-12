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
		"goolord/alpha-nvim",
		dependencies = {
			"nvim-mini/mini.icons",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			require("alpha").setup(require("alpha.themes.theta").config)
		end,
	},
	{
		"wvffle/vimterm",
				
		config = function()
												return
				end,
		keys = {
			"<f2>",
			mode = { "n", "v", "i" },
			"<cmd>call vimterm#toggle()<cr>",
		},
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			terminal = {},
			dim = {},
			input = {},
		},
	},
	{ "sindrets/diffview.nvim" },
}
