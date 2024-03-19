return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  event = 'VimEnter',
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = {
          {
            function()
              local lsps = vim.lsp.get_active_clients { bufnr = vim.fn.bufnr() }
              local icon = require('nvim-web-devicons').get_icon_by_filetype(
                vim.api.nvim_buf_get_option(0, 'filetype')
              )
              if lsps and #lsps > 0 then
                local names = {}
                for _, lsp in ipairs(lsps) do
                  table.insert(names, lsp.name)
                end
                return string.format('%s %s', table.concat(names, ', '), icon)
              else
                return icon or ''
              end
            end,
            on_click = function()
              vim.api.nvim_command 'LspInfo'
            end,
          },
          'progress',
        },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {
          {
            'buffers',
          },
        },
        lualine_z = {
          {
            'tabs',
          },
        },
      },
    }
  end,
}
