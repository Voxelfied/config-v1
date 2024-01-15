return {
    {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end,
    },

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
    },

    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        config = function()
            require("chatgpt").setup({
                api_key_cmd = "echo $OPENAI_API_KEY",
                popup_layout = {
                    default = "center",
                    center = {
                        width = "80%",
                        height = "80%",
                    },
                    right = {
                        width = "30%",
                        width_settings_open = "50%",
                    },
                },
            })
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    },

    {
        "Exafunction/codeium.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({
            })
        end,
    },

    {
        "ziontee113/color-picker.nvim",
        version = "*",
        opts = {
            config = function()
                require("color-picker").setup()
            end,
        },
    },

    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            require("rainbow-delimiters.setup").setup{}
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "onsails/lspkind.nvim",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")

            require("luasnip.loaders.from_vscode").lazy_load()

            vim.opt.completeopt = "menu,menuone,noselect"
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                }),
                formatting = {
                    format = lspkind.cmp_format({
                        maxwidth = 50,
                        ellipsis_char = "\u{f013e}",
                    }),
                },
                window = {
                    completion = cmp.config.window.bordered({
                        border = {
                            { "╭", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╮", "FloatBorder" },
                            { "│", "FloatBorder" },
                            { "╯", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╰", "FloatBorder" },
                            { "│", "FloatBorder" },
                        },
                    }),
                    documentation = cmp.config.window.bordered({
                        border = {
                            { "╭", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╮", "FloatBorder" },
                            { "│", "FloatBorder" },
                            { "╯", "FloatBorder" },
                            { "─", "FloatBorder" },
                            { "╰", "FloatBorder" },
                            { "│", "FloatBorder" },
                        },
                    }),
                    scrollbar = false,
                },
            })
        end,
    },

    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup{}
        end,
    },

    {
        "fedepujol/move.nvim",
        config = function()
            local opts = { noremap = true, silent = true }
            vim.keymap.set('n', '<Tab>j', ':MoveLine(1)<CR>', opts)
            vim.keymap.set('n', '<Tab>k', ':MoveLine(-1)<CR>', opts)
            vim.keymap.set('n', '<Tab>h', ':MoveHChar(-1)<CR>', opts)
            vim.keymap.set('n', '<Tab>l', ':MoveHChar(1)<CR>', opts)
            vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
            vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)
            vim.keymap.set('v', '<Tab>j', ':MoveBlock(1)<CR>', opts)
            vim.keymap.set('v', '<Tab>k', ':MoveBlock(-1)<CR>', opts)
            vim.keymap.set('v', '<Tab>h', ':MoveHBlock(-1)<CR>', opts)
            vim.keymap.set('v', '<Tab>l', ':MoveHBlock(1)<CR>', opts)
        end,
    },

    {
        "sbdchd/neoformat",
    },

    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end
    },
}
