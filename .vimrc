set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:gruvbox_contrast_dark = 'hard'
syntax on
colorscheme gruvbox

set expandtab ts=4 sw=4 ai
set smarttab
" relativenumber (Hybird)
set nu rnu
" augroup numbertoggle
"     autocmd!
"     autocmd BufEnter,FocusGained,InsertLeave    * set rnu
"     autocmd BufLeave,FocusLost,InsertEnter      * set nornu
" augroup END
set ruler

" map CTRL-E to end-of-line (insert mode)
" imap <C-e> <esc>A
imap <C-e> <End>
map <C-e> <End>a
" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>I
map <C-a> <Home>i

imap <C-f> <Right>
imap <C-b> <Left>
imap <C-p> <Up>
imap <C-n> <Down>

map <C-f> <Right>
map <C-b> <Left>

" Delete character
imap <C-d> <Del>
imap <C-h> <BS>

" Word
imap <M-f> <esc>ea
imap <M-b> <esc>bi
map <M-f> e
map <M-b> b
imap <M-a> <esc>(i
imap <M-e> <esc>)i
map <M-a> (
map <M-e> )

" Delete word
imap <M-BS> <C-W>
imap <M-Del> <C-W>
imap <M-d> <C-o>de

" Automatically removing all trailing whitespace - https://vim.fandom.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * %s/\s\+$//e
" Closing brackets for vim - https://stackoverflow.com/a/34992101
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap < <><left>
inoremap [ []<left>
inoremap [<CR> [<CR>]<ESC>O
inoremap [;<CR> [<CR>];<ESC>O
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

