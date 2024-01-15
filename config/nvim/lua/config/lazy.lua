local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        {import = "plugins"},
    },
    defaults = {
        lazy = false,
        version = false,
    },
    install = {
        colorscheme = { "gruvbox-material" },
    },
    checker = {
        enabled = true,
        notify = true,
    },
    change_detection = {
        notify = false,
    },
})

vim.cmd("colorscheme gruvbox-material")
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3b3b3b ]])
vim.cmd([[autocmd FileType help setlocal nosyntax]])


require("config.keymaps")
require("config.options")
require("config.autocmds")
