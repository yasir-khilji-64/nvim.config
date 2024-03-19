return {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("tokyonight").setup({
      style = "night",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        sidebars = "dark",
        floats = "dark",
      },
      dim_inactive = true,
    })
    vim.cmd("colorscheme tokyonight")
  end,
}
