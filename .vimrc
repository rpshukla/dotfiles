" ~/.vimrc

" Syntax and colorscheme " {{{

syntax enable
set background=dark
colorscheme gruvbox
" Output true color rather than 256
set termguicolors

" }}}
" Line numbers " {{{

"Show absolute number of current line and relative numbers for other lines
set number relativenumber

" }}}
" Tabs "{{{

set expandtab
set shiftwidth=2
set softtabstop=4

"Use 2 spaces for HTML and CSS
autocmd BufNewFile,BufRead *.html set softtabstop=2
autocmd BufNewFile,BufRead *.css set softtabstop=2
autocmd BufNewFile,BufRead *.js set softtabstop=2

"Use 2 spaces for C++
autocmd BufNewFile,BufRead *.cpp set softtabstop=2
autocmd BufNewFile,BufRead *.cc set softtabstop=2
autocmd BufNewFile,BufRead *.h set softtabstop=2

"Use 2 spaces for md
autocmd BufNewFile,BufRead *.md set softtabstop=2

"Use real tabs for makefiles
"matches anything called 'makefile', case insensitive
autocmd BufNewFile,BufREad \cmakefile set noexpandtab

" }}}
" Whitespace "{{{

"Remove all trailing whitespace by pressing F5
"https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" }}}
" Folding "{{{

"Automatically folds where there's three consecutive curly braces
set foldmethod=marker

" }}}
" Airline "{{{

" lowered the width at which the git branch section ('b') truncates
let g:airline#extensions#default#section_truncate_width = {
    \ 'b': 45,
    \ 'x': 60,
    \ 'y': 88,
    \ 'z': 45,
    \ 'warning': 80,
    \ 'error': 80,
    \ }

" set theme to match gruvbox colorscheme
" gruvbox airline theme located at /usr/share/vim/vimfiles/autoload/airline/themes/gruvbox.vim
let g:airline_theme='gruvbox'

" }}}
