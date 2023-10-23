---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fk"] = { ": Telescope keymaps<CR>", "Find keymaps" },
    -- Windows
    ["<C-Left>"] = { ":wincmd <<CR>", "Window decrease width" },
    ["<C-Up>"] = { ":wincmd +<CR>", "Window increase height" },
    ["<C-Right>"] = { ":wincmd ><CR>", "Window increase width" },
    ["<C-Down>"] = { ":wincmd -<CR>", "Window decrease height" },
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
    -- Venv & DotEnv
    ["<leader>vs"] = { ": VenvSelect<CR>", "Select Python venv" },
    ["<leader>vc"] = { ": VenvSelectCached<CR>", "Select cached Pyt venv" },
    ["<leader>del"] = { ": Dotenv<CR>", "Load .env" },
    -- Trouble
    ["<leader>td"] = { ": TroubleToggle document_diagnostics<CR>", "Trouble document" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
