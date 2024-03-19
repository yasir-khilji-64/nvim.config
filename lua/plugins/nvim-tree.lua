return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local api = require("nvim-tree.api")
    require("nvim-tree").setup({
      filters = {
        dotfiles = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      hijack_cursor = true,
      hijack_unnamed_buffer_when_opening = false,
      sync_root_with_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      diagnostics = {
        enable = true,
      },
      view = {
        adaptive_size = true,
        side = "left",
        width = 32,
        preserve_window_proportions = true,
      },
      git = {
        enable = true,
        ignore = false,
      },
      filesystem_watchers = {
        enable = true,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        highlight_opened_files = "none",
        indent_markers = {
          enable = false,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "󰈚",
            symlink = "",
            folder = {
              default = "",
              empty = "",
              empty_open = "",
              open = "",
              symlink = "",
              symlink_open = "",
              arrow_open = "",
              arrow_closed = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
    })

    local function open_nvim_tree_on_startup()
      api.tree.toggle({
        focus = false,
        find_file = true,
      })
    end
    local function toggle_opened_buffers()
      api.tree.toggle_no_buffer_filter()
    end
    local function toggle_git_changes()
      api.tree.toggle_git_clean_filter()
    end
    local function open_file_in_new_tab()
      local node = api.tree.get_node_under_cursor()
      -- api.tree.close()
      api.node.open.tab(node)
      api.tree.toggle({
        focus = false,
        find_file = true,
      })
    end

    vim.api.nvim_create_autocmd("BufEnter", {
      group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
      pattern = "NvimTree_*",
      callback = function()
        local layout = vim.api.nvim_call_function("winlayout", {})
        if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then
          vim.cmd("confirm quit")
        end
      end
    })
    vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree_on_startup })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file tree" })
    vim.keymap.set("n", "T", open_file_in_new_tab, { desc = "Open buffer in new tab" })
    vim.keymap.set("n", "<leader>bf", toggle_opened_buffers, { desc = "Toggle opened buffers" })
    vim.keymap.set("n", "<leader>gf", toggle_git_changes, { desc = "Toggle git changes" })
  end,
}
