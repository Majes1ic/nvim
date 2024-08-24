return {
  "nvimtools/none-ls.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    local sources = {
      require("null-ls").builtins.formatting.nixfmt,
      require("null-ls").builtins.formatting.stylua,
    }

    local group = vim.api.nvim_create_augroup("LspFormatting", {})
    require("null-ls").setup({
      debug = false,
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = group,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                bufnr = bufnr,
              })
            end,
          })
        end
      end,
    })
  end,
}
