return {
	{
		"zaldih/themery.nvim",
		lazy = false,
		config = function()
			require("themery").setup({
				themes = { "nordic", "vague", "cyberdream", "oxocarbon", "nightfox" }, -- Your list of installed colorschemes.
				livePreview = true, -- Apply theme while picking. Default to true.
			})
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nordic").load({})
		end,
	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		config = function() end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},
	{ "EdenEast/nightfox.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	},
}
