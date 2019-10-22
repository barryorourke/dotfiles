set shiftwidth=4
runtime! plugin/sensible.vim

filetype off

execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype plugin indent on

colorscheme base16-default-dark
let g:airline_theme='base16_ashes'
