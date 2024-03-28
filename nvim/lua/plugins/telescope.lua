return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		tag = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local config = require("telescope")
			local builtin = require("telescope.builtin")

			config.setup({ defaults = { file_ignore_patterns = { "node_modules", "dist" } } })

			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>tgl", builtin.git_commits, {})
			vim.keymap.set("n", "<leader>tgs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>tgb", builtin.git_branches, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		name = "telescope-ui",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			require("telescope").load_extension("ui-select")
		end,
	},
}
