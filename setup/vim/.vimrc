" Vundle plugin manager.
"
" Installation
" git clone 'https://github.com/VundleVim/Vundle.vim.git' ~/.vim/bundle/Vundle.vim
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Start Vundle plugin list.
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Konfekt/FastFold'
" End Vundle plugin list.
call vundle#end()
filetype plugin indent on
" End Vundle plugin manager.

" Color settings.
set t_Co=256
syntax enable
set background=dark

" Indentation settings.
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent
set foldmethod=syntax

" Other settings.
set textwidth=72 " Use 'gqip' command to wrap paragraph at 72 characters
set backspace=2
set hlsearch " Highlight search results
set showcmd " Show command (in the bottom right corner) as you type it
set nowrap " Do not wrap text to the width of the window
set ruler " Show current line and column number (in the bottom right corner)
set nojoinspaces
set diffopt+=iwhite " Ignore whitespace differences in 'diff' mode

" Git commits
" Git commit messages wrap at 72 characters.
" au FileType gitcommit setlocal textwidth=72

" Makefiles
" Enable hard tabs for Makefiles.
au FileType make setlocal noexpandtab tabstop=8

" C#
" http://codito.in/c-and-vim/
au FileType cs setlocal foldmethod=marker
au FileType cs setlocal foldmarker={,}
" Remap zuz command from Konfekt/FastFold
au FileType cs nmap zuz :set<Space>foldmethod=marker<CR><Plug>(FastFoldUpdate)

" Markdown
" au FileType md setlocal textwidth=72

" Coq
au FileType coq setlocal tabstop=8

" Python
au Filetype py setlocal shiftwidth=4 softtabstop=4
