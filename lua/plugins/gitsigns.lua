return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '│' },
        change = { text = '│' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signcolumn = true,
      numhl = true,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      sign_priority = 6,
    }

    vim.keymap.set(
      'n',
      '<leader>gh',
      '<cmd>Gitsigns preview_hunk_inline<CR>',
      { desc = 'Preview git hunk for current change' }
    )
    vim.keymap.set(
      'n',
      '<leader>gd',
      '<cmd>Gitsigns diffthis<CR>',
      { desc = 'Preview diff for current file' }
    )
  end,
}
