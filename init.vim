testersquatch@penguin:~$ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
testersquatch@penguin:~$ cat ~/.config/nvim/init.vim
call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'farmergreg/vim-lastplace'
  Plug 'preservim/nerdcommenter'
call plug#end()
 
"Config Section
 
let mapleader = ";"
 
let g:deoplete#enable_at_startup = 1
 
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
colorscheme dracula
 
let g:airline#extensions#tabline#enabled = 1                                                                                                                                                                                                                                                                                                                                 
let g:airline_powerline_fonts = 1                                                                                                                                                                                                                                                                                                                                            
" IN CASE YOU DON'T HAVE POWERLINE FONTS, USE THE BELOW                                                                                                                                                                                                                                                                                                                      
" let g:airline#extensions#tabline#left_sep = ' '                                                                                                                                                                                                                                                                                                                            
" let g:airline#extensions#tabline#left_alt_sep = '|'  
 
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
 
 
" with these, if you include capitals in a search it'll do
" the right thing, if you just use lowercase,
" it'll be case insensitive
set ignorecase
set smartcase
 
" highlight search results as typing
set incsearch
set showmatch
nnoremap <CR> :noh<CR>
set hls!
 
" %s/p/r -> %s/p/r/g
set gdefault
 
" allow bs to erase previously entered chars, autoindent, \n's etc
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
"set smartindent
 
" quicker than reaching for escape
inoremap jk <ESC>
 
" show line numbers
set number
 
let g:NERDCreateDefaultMappings = 1  
 
testersquatch@penguin:~$ nvim +PlugInstall
