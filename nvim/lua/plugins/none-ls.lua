return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.biome,
        null_ls.builtins.formatting.biome.with({
          condition = function(u)
            return u.root_has_file({ "biome.json" })
          end,
        }),

        null_ls.builtins.completion.spell,
      },
    })

    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
  end,
}
