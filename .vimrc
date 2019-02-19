" Settings

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set number

" Plug-ins

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'alok/notational-fzf-vim'
  " Plug 'bookcasey/notational-fzf-vim', { 'branch': 'filename-only' }
  " Plug '~/Desktop/notational-fzf-vim', { 'branch': 'filename-only' }
call plug#end()

" notational-fzf-vim

nnoremap <silent> <c-s> :NV<CR>

let g:nv_search_paths = ['~/Library/Mobile\ Documents/iCloud\~co\~fluder\~fsnotes/Documents']
let g:nv_default_extension = '.txt'
let g:nv_preview_direction = 'bottom'
let g:nv_preview_width = 60
" let g:nv_use_short_pathnames = 1
" let g:nv_pathnames_display = 'filename'

" Open in Calca

nnoremap <leader>e :silent exec "!open -a Calca '%'" <bar> :NV<CR>
