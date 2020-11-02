" =============================================================================
" File: toggle_terminal.vim
" Author: pakutoma - edited by sav196
" License: MIT License
" =============================================================================

if exists('g:loaded_toggle_terminal')
  finish
endif
let g:loaded_toggle_terminal = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 ToggleTerminal call toggle_terminal#ToggleTerminal()

let &cpo = s:save_cpo
unlet s:save_cpo
