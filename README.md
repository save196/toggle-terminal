# toggle-terminal
Toggle :terminal for Vim8 or later

## Install
### vim-plug
```
Plug 'save196/toggle-terminal'
```

## Usage
```
" map <C-@> to toggle
tnoremap <silent> <C-@> <C-w>:ToggleTerminal<CR>
nnoremap <silent> <C-@> :ToggleTerminal<CR>

" set terminal window position
" (see possible options at :help vertical)
let g:toggle_terminal#position = 'topleft'
```
