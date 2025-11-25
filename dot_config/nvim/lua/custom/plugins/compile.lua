return {
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},
	{
		"Zeioth/compiler.nvim",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
		opts = {
			tasks = {
				c = {
					{
						name = "Make and Run",
						cmd = { "make", "&&", "./main" },
					},
				},
			},
		},
		init = function()
			-- Open compiler
			vim.api.nvim_set_keymap("n", "<F6>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

			-- Redo last selected option
			vim.api.nvim_set_keymap(
				"n",
				"<S-F6>",
				"<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>",
				{ noremap = true, silent = true }
			)

			-- Toggle compiler results
			vim.api.nvim_set_keymap("n", "<F3>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
		end,
	},
	{
		"stevearc/overseer.nvim",
		commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
		cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
		opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1,
			},
		},
	},
}
