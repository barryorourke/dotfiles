syntax on

set nobackup
set nowritebackup
set noswapfile

set mouse-=a

set paste

au BufRead,BufNewFile *.md,*.mkd,*.markdown,*.mdwn   set filetype=mkd
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
au BufRead,BufNewFile *.tt set filetype=tt2
au BufNewFile,BufRead *.ini,*/.hgrc,*/.hg/hgrc setf ini 
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufNewFile,BufRead *.jsonp set filetype=json
