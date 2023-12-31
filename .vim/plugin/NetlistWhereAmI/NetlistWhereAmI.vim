"--------------------------
" Program  : NetlistWhereAmI(NetlistWhereAmI.vim)
" Language : Vim script
" Author   : YEUNGCHIE
"--------------------------

" 主函数

function! NetlistWhereAmI()
    if &filetype ==? 'verilog'
        call NetlistWhereAmI_DisplayInstInfo('verilog')
        autocmd CursorMoved * call NetlistWhereAmI_DisplayInstInfo('verilog')
    else
        echohl WarningMsg
        echo 'Not a verilog file!'
        echohl None
    endif
endfunction

" END
