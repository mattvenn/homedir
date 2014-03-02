set ai
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
au! BufRead,BufNewFile *.scad	 set filetype=openscad
au! BufRead,BufNewFile *.ino	 set filetype=c
set wildmode=longest,list,full
set wildmenu
