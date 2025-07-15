vim.keymap.set("n", "S", ":%s//g<Left><Left>")
-- vim.keymap.set("x", "<leader>P", "\"+p")

-- LuaSnip binding
vim.cmd("imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'")

vim.keymap.set("", "<C-h>", "<C-w>h")
vim.keymap.set("", "<C-j>", "<C-w>j")
vim.keymap.set("", "<C-k>", "<C-w>k")
vim.keymap.set("", "<C-l>", "<C-w>l")

vim.keymap.set("", "<leader>c", ":w! | !compiler \"<c-r>%\"<CR>")
vim.keymap.set("", "<leader>p", ":!opout <c-r>%<CR><CR>")

vim.cmd([[
autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %
]])
