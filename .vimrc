set shiftwidth=4
runtime! plugin/sensible.vim

filetype off

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

set background=dark
colorscheme base16-default
let g:airline_theme='serene'
