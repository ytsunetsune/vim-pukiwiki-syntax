au BufRead,BufNewFile *.pukiwiki set filetype=pukiwiki
autocmd BufWritePre * if &ft == 'pukiwiki' | :%s/|\s\+h$/|h/ge | :%s/|\s\+f$/|f/ge | endif
