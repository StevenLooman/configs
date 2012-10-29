set encoding=utf-8
set bg=dark
syntax on
set autoindent
filetype plugin on
filetype indent on
highlight BadWhitespace ctermbg=red guibg=red
set hlsearch

" C
au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile *.c,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set autoindent
au BufRead,BufNewFile *.c,*.h match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
au         BufNewFile *.c,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '

" Java
au BufRead,BufNewFile *.java set expandtab
au BufRead,BufNewFile *.java set tabstop=4
au BufRead,BufNewFile *.java set shiftwidth=4
au BufRead,BufNewFile *.java set autoindent
au BufRead,BufNewFile *.java match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.java match BadWhitespace /\s\+$/
au         BufNewFile *.java set fileformat=unix
au BufRead,BufNewFile *.java let b:comment_leader = '//'

" Python, PEP-008
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=79
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'

" JS
au BufRead,BufNewFile *.js set expandtab
au BufRead,BufNewFile *.js set tabstop=4
au BufRead,BufNewFile *.js set softtabstop=4
au BufRead,BufNewFile *.js set shiftwidth=4
au BufRead,BufNewFile *.js set autoindent
au BufRead,BufNewFile *.js match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.js match BadWhitespace /\s\+$/
au         BufNewFile *.js set fileformat=unix
au BufRead,BufNewFile *.js let b:comment_leader = '//'

" Makefile
au BufRead,BufNewFile Makefile* set noexpandtab

" XML
au BufRead,BufNewFile *.xml set expandtab
au BufRead,BufNewFile *.xml set tabstop=4
au BufRead,BufNewFile *.xml set softtabstop=4
au BufRead,BufNewFile *.xml set shiftwidth=4
au BufRead,BufNewFile *.xml set autoindent
au BufRead,BufNewFile *.xml match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.xml match BadWhitespace /\s\+$/
au         BufNewFile *.xml set fileformat=unix
au BufRead,BufNewFile *.xml let b:comment_leader = '<!--'

" ZCML
au BufRead,BufNewFile *.zcml set filetype=xml
au BufRead,BufNewFile *.zcml set expandtab
au BufRead,BufNewFile *.zcml set tabstop=4
au BufRead,BufNewFile *.zcml set softtabstop=4
au BufRead,BufNewFile *.zcml set shiftwidth=4
au BufRead,BufNewFile *.zcml set autoindent
au BufRead,BufNewFile *.zcml match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.zcml match BadWhitespace /\s\+$/
au         BufNewFile *.zcml set fileformat=unix
au BufRead,BufNewFile *.zcml let b:comment_leader = '<!--'

" PT
au BufRead,BufNewFile *.pt set filetype=xml
au BufRead,BufNewFile *.pt set expandtab
au BufRead,BufNewFile *.pt set tabstop=4
au BufRead,BufNewFile *.pt set softtabstop=4
au BufRead,BufNewFile *.pt set shiftwidth=4
au BufRead,BufNewFile *.pt set autoindent
au BufRead,BufNewFile *.pt match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.pt match BadWhitespace /\s\+$/
au         BufNewFile *.pt set fileformat=unix
au BufRead,BufNewFile *.pt let b:comment_leader = '<!--'


" key mappings
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
