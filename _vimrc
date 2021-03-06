set ts=4
set sw=4
set hls
set autoindent
set belloff=all
set nobackup
set noundofile
set guifont=courier_new:h10
set guioptions-=T
set clipboard=unnamed

if has('gui_running')
  colorscheme OceanicNext
endif

inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

set nu 
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++14 -O2 % -o %:r -D _DEBUG -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR> 
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
