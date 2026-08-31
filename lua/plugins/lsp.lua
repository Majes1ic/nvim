return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },

    config = function()
        vim.lsp.log.set_level("OFF")

        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            update_in_insert = false,
            underline = true,
            severity_sort = true,

            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "if_many",
                header = "",
                prefix = "",
            },
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,

            settings = {
                ["luals"] = {},

                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },

                    diagnostics = {
                        globals = { "vim" },
                    },

                    workspace = {
                        checkThirdParty = false,
                    },
                },
            },
        })

        vim.lsp.config("nil_ls", {
            capabilities = capabilities,
        })

        vim.lsp.config("nixd", {
            capabilities = capabilities,
        })

        vim.lsp.enable("lua_ls")
        vim.lsp.enable("nil_ls")
        vim.lsp.enable("nixd")
    end,
}
