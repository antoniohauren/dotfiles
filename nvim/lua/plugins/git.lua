return {
  {
    "tpope/vim-fugitive",
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local gs = require("gitsigns")

      gs.setup()

      local preview = function()
        gs.preview_hunk()
      end

      local blame_line = function()
        gs.toggle_current_line_blame()
      end

      vim.keymap.set("n", "<leader>gp", preview, {})
      vim.keymap.set("n", "<leader>gl", blame_line, {})
    end,
  },
}
