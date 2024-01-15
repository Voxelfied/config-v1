-- NeoVim Formatting
vim.opt.tabstop= 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.numberwidth = 5
vim.opt.cursorline = true
vim.opt.virtualedit = "onemore"
vim.opt.smartindent = true

-- NeoVim Interaction
vim.opt.mouse = ""

-- NeoVim Windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Line Numbers & Columns
vim.opt.relativenumber = true
vim.opt.number = true
vim.cmd('set number')
vim.cmd [[highlight CursorLineNr guifg=#F2953B]]

-- True Color Support
vim.opt.termguicolors = true

-- Buffer Characters
vim.opt.fillchars = { eob = " ", vert = "▎" }
vim.cmd [[highlight VertSplit guifg=#474747]]
vim.opt.list= true
vim.opt.showbreak = '▶'
vim.cmd([[set listchars=space:·,eol:󱞣]])

-- Make Cursor Blink
vim.opt.guicursor = {
    'n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
    'i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100',
    'r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100'
}

-- Float Options
vim.cmd([[highlight FloatBorder guifg=#A99884 guibg=none]])
vim.cmd([[highlight NormalFloat guifg=#A99884 guibg=none]])

-- System
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.conceallevel = 0
vim.opt.undofile = true
vim.opt.updatetime = 100
