" Settings

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
let mapleader = "\<Space>"

nnoremap <leader>p :e ~/.vimrc<CR>

" Case insensitive search

set ignorecase
set smartcase

" Folds

set foldmethod=indent
augroup OpenAllFoldsOnFileOpen
  autocmd!
  autocmd BufRead * normal zR
augroup END

" Habit breaking hard mode

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Look 

let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=0
highlight Folded ctermbg=0

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
" Plug '~/Desktop/Projects/notational-fzf-vim', { 'branch': 'height' }
call plug#end()

" notational-fzf-vim

nnoremap <silent> <leader>l :NV!<CR>

let g:nv_search_paths = ['~/Notes']
let g:nv_default_extension = '.txt'
let g:nv_create_note_window = 'edit'
let g:nv_preview_direction = 'right'
let g:nv_preview_width = 60
let g:nv_use_short_pathnames = 1
" let g:nv_pathnames_display = 'filename'

" Open in Calca
nnoremap <leader>e :silent exec "!open -a Calca '%'" <bar> :NV<CR>

" Use markdown syntax on all text files 
au BufReadPost,BufNewFile *.txt set syntax=markdown
au BufReadPost,BufNewFile *.txt highlight LineNr ctermfg=black
