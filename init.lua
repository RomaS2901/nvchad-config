local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

autocmd("VimEnter", {
  command = "silent! :Dotenv",
})
autocmd("BufReadPre", {
  pattern = "*.py",
  command = ":VenvSelectCached",
  once = true,
})

-- Set relative number
vim.wo.relativenumber = true
vim.opt.relativenumber = true

-- Wrap lines
vim.opt.wrap = false
vim.opt.spell = true
