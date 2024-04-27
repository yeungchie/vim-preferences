set number
set tabstop=4
set shiftwidth=4
set expandtab
set autochdir
set showmatch
set showcmd
set autoindent
set smartindent
set ruler
set incsearch
set ignorecase
set visualbell

set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformats=unix
set t_Co=256
set clipboard=unnamed
set autoread

set cursorline
hi cursorline guibg=#FFFFFF
"set cursorcolumn
"hi gcursorline guibg=#FFFFFF

syntax on
syntax enable

set guifont=Monospace\ 15

"colorscheme desert
colorscheme torte

au BufNewFile,BufRead *.pl,*.perl set filetype=perl
au BufNewFile,BufRead *.cal,*.drc,*.lvs,*.rule set filetype=cpp
au BufNewFile,BufRead cds.lib,*layermap set filetype=sh
au BufNewFile,BufRead *.il,*.ils,*.skl,*cdsinit,*.tf,*.drf,*.ocn set filetype=skill
au BufNewFile,BufRead *.json set filetype=javascript

highlight MySpaceEOL term=reverse ctermfg=0 ctermbg=9 gui=bold guifg=Black guibg=Red
match MySpaceEOL /\s\+$/
