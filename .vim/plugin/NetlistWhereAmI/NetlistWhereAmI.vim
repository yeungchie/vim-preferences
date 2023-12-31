"--------------------------
" Program  : NetlistWhereAmI(NetlistWhereAmI.vim)
" Language : Vim script
" Author   : YEUNGCHIE
"--------------------------

" 主函数

function! NetlistWhereAmI()
    let l:type = &filetype
    if l:type ==# 'verilog'
        call NetlistWhereAmI_DisplayInstInfo('verilog')
        autocmd CursorMoved * call NetlistWhereAmI_DisplayInstInfo('verilog')
    else
        echohl WarningMsg
        let l:supported = ['verilog']
        echo printf('Not a valid filetype: %s, supported: [%s]', l:type, join(l:supported, ', '))
        echohl None
    endif
endfunction

" END
