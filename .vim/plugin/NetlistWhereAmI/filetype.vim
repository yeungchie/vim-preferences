"--------------------------
" Program  : NetlistWhereAmI(filetype.vim)
" Language : Vim script
" Author   : YEUNGCHIE
"--------------------------

" 配置常见文件后缀名

autocmd BufNewFile,BufRead *.verilog,*.v set filetype=verilog
autocmd BufNewFile,BufRead *.spice,*.sp,*.cdl,*.src.net set filetype=spice

" END
