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


call plug#end()


colorscheme onedark
set number
set termguicolors
syntax on

let g:lightline = {'colorscheme': 'one'}
