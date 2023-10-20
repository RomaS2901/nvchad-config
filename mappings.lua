---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fk"] = { ": Telescope keymaps<CR>", "Find keymaps" },
    -- DAP
    ["<leader>db"] = { ": DapToggleBreakpoint<CR>", "Toggle breakpoint" },
    ["<leader>dc"] = { ": DapContinue<CR>", "Continue" },
    ["<leader>dr"] = { ": DapToggleRepl<CR>", "Toggle REPL" },
    -- Neotest
    ["<leader>dm"] = { ": Neotest run<CR>", "Run nearest test" },
    ["<leader>dM"] = { ": Neotest run strategy='dap'<CR>", "Run nearest test DAP" },
    ["<leader>df"] = { ": Neotest run vim.fn.expand('%')<CR>", "Run current test file" },
    ["<leader>dop"] = { ": Neotest output-panel<CR>", "Test output panel" },
    ["<leader>ds"] = { ": Neotest summary<CR>", "Tests summary" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
