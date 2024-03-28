return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-mocha",
        section_separators = "",
        component_separators = "|",
      },
      sections = {
        lualine_x = {
          "encoding",
          {
            "fileformat",
            symbols = {
              unix = "LF",
              dos = "CRLF",
            },
          },
          "filetype",
        },
      },
    })
  end,
}
