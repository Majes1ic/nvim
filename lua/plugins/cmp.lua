return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'onsails/lspkind.nvim',
    },
    config = function()
      local cmp = require('cmp')
      local options = {
        preselect = cmp.PreselectMode.None,
        mapping = {
          ['<C-y>'] = cmp.mapping.confirm({ select = true }),

          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-n>'] = cmp.mapping.select_next_item(),

          ['<S-Up>'] = cmp.mapping.scroll_docs(-5),
          ['<S-Down>'] = cmp.mapping.scroll_docs(5),

          ['<C-e>'] = cmp.mapping.abort(),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = vim.tbl_deep_extend('force', cmp.config.window.bordered(), {
            max_height = 15,
            max_width = 60,
          }),
        },
        sources = cmp.config.sources({
          { name = 'nvim_lsp', keyword_length = 1 },
          { name = 'path' },
        }),
        formatting = {
          format = require('lspkind').cmp_format({
            mode = 'symbol_text',
            maxwidth = 60,
            ellipsis_char = '...',
            before = function(entry, vim_item)
              if entry.source.name == 'nvim_lsp' then
                vim_item.menu = '[' .. entry.source.source.client.name .. ']'
              else
                vim_item.menu = '[' .. entry.source.name .. ']'
              end
              return vim_item
            end,
          }),
        },
      }

      cmp.setup(options)
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'cmdline' },
          { name = 'path' },
        },
      })
    end,
  },
}
