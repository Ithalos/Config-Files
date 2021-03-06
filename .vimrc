"
"   Ithalos .vimrc
"

" Enable 256 colours
set t_Co=256

" Syntax highlighting
syntax on

" Enable auto indenting
set autoindent

" Show line numbers
set number

" Configure tab length and formatting
set shiftwidth=4
set softtabstop=4
set expandtab

" Set encoding
set encoding=utf-8

" Set colourscheme
colorscheme ithalos

" Display syntax group of selected text
function DisplaySyntax()

    if !exists("*synstack")
        return
    endif

    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

