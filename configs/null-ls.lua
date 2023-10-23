local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local b = null_ls.builtins

local sources = {

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck,

  -- python
  null_ls.builtins.formatting.black.with {
    prefer_local = true,
  },
  null_ls.builtins.formatting.isort.with {
    prefer_local = true,
  },
  null_ls.builtins.diagnostics.flake8.with {
    prefer_local = true,
  },
  null_ls.builtins.diagnostics.mypy.with {
    prefer_local = true,
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
            filter = function(_client)
              return _client.name == "null-ls"
            end,
          }
          -- vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
}
