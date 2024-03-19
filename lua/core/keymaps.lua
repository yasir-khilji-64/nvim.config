vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save current buffer" })
vim.keymap.set("n", "<C-w>", "<cmd>q<CR>", { desc = "Quit current buffer" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights" })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })

-- Window and Tab management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

vim.keymap.set("n", "<C-left>", "<C-w><C-h>", { desc = "Move focus to left window" })
vim.keymap.set("n", "<C-right>", "<C-w><C-l>", { desc = "Move focus to right window" })
vim.keymap.set("n", "<C-down>", "<C-w><C-j>", { desc = "Move focus to lower window" })
vim.keymap.set("n", "<C-up>", "<C-w><C-k>", { desc = "Move focus to upper window" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<S-Tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Highligh on Yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("user-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
