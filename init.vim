" auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \                                                                  
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim                                                             
  autocmd VimEnter * PlugInstall                                                                                                      
endif                                                                                                                                 

call plug#begin('~/.config/nvim/plugged')


Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/junegunn/fzf.vim.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'

call plug#end()


colorscheme onedark

set number

set termguicolors

syntax on

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set history=1000
set undolevels=1000
set visualbell
set noerrorbells
set nobackup
set noswapfile

let g:lightline = {'colorscheme': 'one'}

"auto close {
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()

map <A-1> :NERDTreeToggle<CR>

