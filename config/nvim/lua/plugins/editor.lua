return {
    {
        'kiyoon/treesitter-indent-object.nvim',
        keys = {
            {
                "ai",
                function() require'treesitter_indent_object.textobj'.select_indent_outer() end,
                mode = {"x", "o"},
                desc = "Select context-aware indent (outer)",
            },
            {
                "aI",
                function() require'treesitter_indent_object.textobj'.select_indent_outer(true) end,
                mode = {"x", "o"},
                desc = "Select context-aware indent (outer, line-wise)",
            },
            {
                "ii",
                function() require'treesitter_indent_object.textobj'.select_indent_inner() end,
                mode = {"x", "o"},
                desc = "Select context-aware indent (inner, partial range)",
            },
            {
                "iI",
                function() require'treesitter_indent_object.textobj'.select_indent_inner(true, 'V') end,
                mode = {"x", "o"},
                desc = "Select context-aware indent (inner, entire range) in line-wise visual mode",
            },
        },
    },

    {
        'jbyuki/instant.nvim',
    },

    {
        'barrett-ruth/live-server.nvim',
        build = 'yarn global add live-server',
        config = true,
    },

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            local nvimtree = require("nvim-tree")

            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1

            nvimtree.setup({
                view = {
                    width = 40,
                },
                renderer = {
                    indent_markers = {
                        enable = true,
                    },
                    icons = {
                        glyphs = {
                            git = {
                                unstaged = "✗",
                                staged = "✓",
                                unmerged = "",
                                renamed = "➜",
                                untracked = "★",
                                deleted = "",
                                ignored = "◌",
                            },
                            folder = {
                                arrow_closed = "",
                                arrow_open = "",
                                open = "",
                                empty = "",
                                empty_open = "",
                                symlink = "",
                                symlink_open = "",
                            },
                        },
                    },
                },
                actions = {
                    open_file = {
                        window_picker = {
                            enable = false,
                        },
                    },
                },
                filters = {
                    custom = { ".DS_Store" },
                },
                git = {
                    ignore = false,
                },
                hijack_cursor = true
            })
        end,
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup {
                defaults = {
                    layout_config = {
                        height = 25,
                        width = 0.8,
                        prompt_position = "bottom",
                        preview_cutoff = 15,
                        horizontal = {
                            mirror = true,
                        },
                        vertical = {
                            mirror = true,
                        },
                    },
                },
            }
            vim.cmd([[colorscheme gruvbox-material]])
            vim.cmd([[highlight Normal guibg=#282828 ctermbg=235]])
            vim.cmd([[hi TelescopeBorder guifg=#625D5A ctermfg=245]])
        end,
    },

    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup{

            }
        end,
    },

    {
        'folke/which-key.nvim',
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },

    {
        'gelguy/wilder.nvim',
        config = function()
            require("wilder").setup()
        end,
    },

    {
        'folke/zen-mode.nvim',
        opts = {},
    },

    {
        'akinsho/bufferline.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        version = "*",
        opts = {
            options = {
                mode = "tabs",
                separator_style = "slant",
            },
        },
    },

    {
        'stevearc/dressing.nvim',
        event = "VeryLazy",
    },

    {
        'b0o/incline.nvim',
        config = function()
            require('incline').setup {
                debounce_threshold = {
                    falling = 50,
                    rising = 10
                },
                hide = {
                    cursorline = false,
                    focused_win = false,
                    only_win = true
                },
                highlight = {
                    groups = {
                        InclineNormal = {
                            default = true,
                            group = "NormalFloat"
                        },
                        InclineNormalNC = {
                            default = true,
                            group = "NormalFloat"
                        }
                    }
                },
                ignore = {
                    buftypes = "special",
                    filetypes = {},
                    floating_wins = true,
                    unlisted_buffers = true,
                    wintypes = "special"
                },
                render = "basic",
                window = {
                    margin = {
                        horizontal = 1,
                        vertical = 1
                    },
                    options = {
                        signcolumn = "no",
                        wrap = false
                    },
                    padding = 1,
                    padding_char = " ",
                    placement = {
                        horizontal = "right",
                        vertical = "top"
                    },
                    width = "fit",
                    winhighlight = {
                        active = {
                            EndOfBuffer = "None",
                            Normal = "InclineNormal",
                            Search = "None"
                        },
                        inactive = {
                            EndOfBuffer = "None",
                            Normal = "InclineNormalNC",
                            Search = "None"
                        }
                    },
                    zindex = 50
                }
            }
        end,
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        config = function()
            local highlight = {
                "GruvLite",
                "GruvLiter",
            }
            local hooks = require "ibl.hooks"
            hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                vim.api.nvim_set_hl(0, "GruvLite", { fg = "#333333" })
                vim.api.nvim_set_hl(0, "GruvLiter", { fg = "#3d3d3d" })
            end)
            require("ibl").setup {
                indent = {
                    char = "▎",
                    highlight = highlight,
                },
                whitespace = {
                    remove_blankline_trail = false,
                },
                scope = { enabled = true },
                exclude = {
                    filetypes = {
                        "dashboard",
                    },
                },
            }
        end,
        opts = {},
    },

    {
        'echasnovski/mini.animate',
        event = "VeryLazy",
        opts = function(_, opts)
            opts.scroll = {
                enable = false,
            }
        end,
    },

    {
        'karb94/neoscroll.nvim',
        config = function ()
            require('neoscroll').setup{}
        end,
    },

    {
        'andweeb/presence.nvim',
        config = function()
            require("presence").setup{}
        end,
    },

    {
        'LukasPietzschmann/telescope-tabs',
        requires = { 'nvim-telescope/telescope.nvim' },
        config = function()
            require('telescope-tabs').setup{}
        end,
    },

    {
        'mg979/vim-visual-multi',
    },
}
