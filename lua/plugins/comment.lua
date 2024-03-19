return {
  "numToStr/Comment.nvim",
  event = "BufEnter",
  config = function()
    require("Comment").setup()
    local api = require("Comment.api")

    vim.keymap.set("n", "<C-_>", api.toggle.linewise.current, { desc = "Toggle comments for current line" })
    vim.keymap.set("v", "<C-_>", api.call("toggle.linewise", "g@"), { expr = true, desc = "Toggle comments for current selection" })
  end
}
