return {
  "nvim-neo-tree/neo-tree.nvim",
  name = "neo-tree",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local config = require("neo-tree")
    local command = require("neo-tree.command")

    config.setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            command.execute({ action = "close" })
          end,
        },
      },
    })

    local toggle = function()
      command.execute({ action = "focus", toggle = true })
    end

    vim.keymap.set("n", "<C-n>", toggle, {})
    vim.keymap.set("n", "<leader>fe", toggle, {})
  end,
}
