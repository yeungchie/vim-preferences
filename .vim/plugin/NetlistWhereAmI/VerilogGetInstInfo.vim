"--------------------------
" Program  : NetlistWhereAmI(VerilogGetInstInfo.vim)
" Language : Vim script
" Author   : YEUNGCHIE
"--------------------------

" Verilog 分析

function! NetlistWhereAmI_VerilogGetInstInfo()
    if getline('.') ==# 'endmodule'
        return {
            \ 'status': 'endmodule'
        \ }
    endif
    let l:pattern = '^\s*\(\w\+\)\s\+\(\w\+\)\s\+('
    let l:lineNum = search(l:pattern, 'Wbnc')
    if l:lineNum == 0
        return {
            \ 'status': 'none'
        \ }
    elseif search('^endmodule', 'Wbnc', l:lineNum-1)
        return {
            \ 'status': 'none'
        \ }
    else
        let l:matched = matchlist(getline(l:lineNum), l:pattern)
        if l:matched[1] ==# 'module'
            return {
                \ 'status': 'module',
                \ 'line': l:lineNum,
                \ 'module': l:matched[2]
            \ }
        else
            return {
                \ 'status': 'inst',
                \ 'line': l:lineNum,
                \ 'module': l:matched[1],
                \ 'inst': l:matched[2]
            \ }
        endif
    endif
endfunction

" END
