return {
    {
        "folke/neodev.nvim",
        opts = {} ,
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "css-lsp",
                "cssmodules-language-server",
                "emmet-ls",
                "dockerfile-language-server",
                "yaml-language-server",
                "arduino-language-server",
                "codelldb",
                "eslint-lsp",
                "html-lsp",
                "java-language-server",
                "json-lsp",
                "lua-language-server",
                "prettier",
                "pyright",
                "rust-analyzer",
                "selene",
                "shfmt",
                "stylua",
                "tailwindcss-language-server",
                "taplo",
                "typescript-language-server",
            },
        },
    },

    {
        "williamboman/mason-lspconfig.nvim",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()

            local lspconfig = require('lspconfig')

            lspconfig.cssls.setup{}
            lspconfig.cssmodules_ls.setup{}
            lspconfig.emmet_ls.setup{}
            lspconfig.dockerls.setup{}
            lspconfig.yamlls.setup{}
            lspconfig.arduino_language_server.setup{}
            lspconfig.eslint.setup{}
            lspconfig.html.setup{}
            lspconfig.jdtls.setup{}
            lspconfig.jsonls.setup{}
            lspconfig.lua_ls.setup{}
            lspconfig.pyright.setup{}
            lspconfig.rust_analyzer.setup{}
            lspconfig.tsserver.setup{}
            lspconfig.tailwindcss.setup{}
        end,
    },
}
