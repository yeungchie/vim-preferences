"--------------------------
" Program  : NetlistWhereAmI(DisplayInstInfo.vim)
" Language : Vim script
" Author   : YEUNGCHIE
"--------------------------

" 格式化显示

function! NetlistWhereAmI_DisplayInstInfo(type)
    if a:type ==# 'verilog'
        let l:info = NetlistWhereAmI_VerilogGetInstInfo()
        if l:info['status'] ==# 'none'
            echohl WarningMsg
            echo 'Outside of module!'
        elseif l:info['status'] ==# 'endmodule'
            echohl WarningMsg
            echo 'End of module!'
        elseif l:info['status'] ==# 'module'
            echohl Debug
            echo printf("Module: %s, at line %d", l:info['module'], l:info['line'])
        elseif l:info['status'] ==# 'inst'
            echohl Debug
            echo printf("Instance: %s / %s, at line %d", l:info['module'], l:info['inst'], l:info['line'])
        endif
        echohl None
    else
        echohl Error
        echo printf('Invalid filetype: %s', a:type)
    endif
    echohl None
endfunction

" END
