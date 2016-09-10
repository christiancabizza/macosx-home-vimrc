" Indentation settings for Python Language
autocmd FileType python set expandtab
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set textwidth=80 
" ********************

set autoindent

filetype plugin indent on
syntax on
" ********************

" ********************
func! WordProcessorMode()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu

com! Wprocmode call WordProcessorMode()
" ********************

" vundle configuration
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on
"  *********************

" YCM Configurations suggested in Django Project Homepage suggested in Django
" official documentation
"
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
" **********************

" UltiSnips configuration suggested for YouCompleteMe
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
" **********************

