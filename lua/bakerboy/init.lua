require("bakerboy.remaps")
vim.opt.foldlevelstart=1
vim.opt.foldmethod='syntax'
-- vim.opt.go='a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus=0
vim.opt.mouse='a'
vim.opt.title = true
vim.opt.shiftwidth=4
vim.opt.softtabstop = 4
vim.opt.tabstop=4

-- Vimwiki config - can't be loaded in ./after/plugin as it needs to load before vim does to
vim.g.vimwiki_folding='expr'
vim.g.vimwiki_ext2syntax = {['.Rmd']= 'markdown', ['.rmd']= 'markdown',['.md']= 'markdown', ['.markdown']= 'markdown', ['.mdown']= 'markdown'}
-- map <leader>v :VimwikiIndex
vim.g.vimwiki_list = {{path = '~/Nextcloud/Notes', path_html = '~/Nextcloud/Notes/html', syntax = 'markdown', ext = '.md'}}
