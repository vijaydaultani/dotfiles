" Load vim from config directory
"https://vi.stackexchange.com/questions/11879/how-can-put-vimrc-and-viminfo-into-vim-directory
set runtimepath+=$HOME/.vim,$HOME/.vim/after

"----------------------------------------------------------------------
" Pathogen settings
"----------------------------------------------------------------------
" execute pathogen#infect()

" Indent the file
filetype indent plugin on

"----------------------------------------------------------------------
" General settings
"----------------------------------------------------------------------
" Syntax highlighting
syntax on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" On pressing backspace delete 4 spaces
set softtabstop=4
" delete text
set backspace=indent,eol,start

" Highlight all search matches
" https://codeyarns.com/2011/07/29/vim-chart-of-color-names/
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
:set hlsearch
:hi Search cterm=None ctermfg=7 ctermbg=198

" Highlight only current line of cursor
" http://vim.wikia.com/wiki/Highlight_current_line
:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>b :set cursorline!<CR> 

" Map a specific key or shortcut for showing line numbers in normal mode
map <C-N><C-N> :set invnumber<CR>

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" UTF8 support
set encoding=utf-8

" Searching tags file up in the tree unless one is found
" https://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
set tags=./tags;/

" Install taglist
" http://vim-taglist.sourceforge.net/manual.html
" Download and keep both plugin and doc directory in ~/.vim/bundle/ dir
nnoremap <silent> <C-t><C-t> :TlistToggle<CR>

" Ctrl+\ - Open the definition in a new tab
" Alt+] - Open the definition in a vertical split
" https://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
let Tlist_WinWidth = 40

" Plugin - Tabbar
nmap <Leader>t :TagbarToggle<CR>

" Toggle paste mode with <Leader>p
:nnoremap <Leader>p :set invpaste paste?<CR>
set showmode

" Relative line numbers
map <Leader>r :set relativenumber!

" Show the file name at the bottom 
" https://unix.stackexchange.com/questions/111558/how-can-i-constantly-see-the-current-filename-in-vim
set laststatus=2

" Configure vim to run chezmoi apply whenever you save a dotfile
autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path "%"

"Load up all of our plugins 
if filereadable(expand("$HOME/.vim/vimrc.bundles"))
    source $HOME/.vim/vimrc.bundles 
endif
