-- Set leader before any other thing gets loaded
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set nerd font integrations
vim.g.have_nerd_font = true

-- Set line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Disable mode if needed
-- vim.opt.mode = false

-- Set clipboard support
vim.opt.clipboard = "unnamedplus"

-- Set preferred indentations
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.breakindent = true

-- Set line wrap
vim.opt.wrap = false

-- Save undo history
vim.opt.undofile = true

-- Set preferred search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Set cursor line
vim.opt.cursorline = true

-- Set preferred appearance settings
vim.opt.signcolumn = "yes"
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- Set update time and timeouts
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Set whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Set live substitutions
vim.opt.inccommand = "split"

-- Set scroll off position
vim.opt.scrolloff = 12

-- Set backspace behaviour
vim.opt.backspace = "indent,eol,start"

-- Set window splits behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Turn off swapfile
vim.opt.swapfile = false
