" =============================================================================
" File: toggle_terminal.vim
" Author: pakutoma - edited by sav196
" License: MIT License
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

let g:toggle_terminal#position = get(g:,'toggle_terminal#position','botright')

function! toggle_terminal#ToggleTerminal()
    let bufferNum = bufnr('term://')
    if bufferNum == -1 || bufloaded(bufferNum) != 1
        execute g:toggle_terminal#position.' split'
        execute 'term'
        execute 'resize 10'
    else
        let windowNum = bufwinnr(bufferNum)
        if windowNum == -1
            execute g:toggle_terminal#position.' sbuffer '.bufferNum
            execute 'resize 10'
        else
            execute windowNum.'wincmd w'
            hide
        endif
    endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
