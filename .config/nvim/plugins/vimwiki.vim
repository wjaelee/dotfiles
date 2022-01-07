Plug 'vimwiki/vimwiki'
let g:vimwiki_conceallevel = 0
let g:vimwiki_list = [
            \{'path': '~/Dropbox/wiki/', 
            \ 'syntax': 'markdown', 'ext': '.md'}]

command! WikiIndex :VimwikiIndex
nmap <leader>ww <Plug>VimwikiIndex
nmap <leader>wi <Plug>VimwikiDiaryIndex
nmap <leader>w<leader>w <Plug>VimwikiMakeDiaryNote
nmap <leader>wt :VimwikiTable<CR>
" nmap <leader><space> <Plug>VimwikiRemoveSingleCB
