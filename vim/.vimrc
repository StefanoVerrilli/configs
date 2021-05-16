syntax on 
set nu
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/vim/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set ai
set ruler

colorscheme peachpuff
set timeoutlen=1000 ttimeoutlen=0
highlight Comment ctermfg=green
hi Search cterm=NONE ctermfg=black ctermbg=white
hi visual term=none cterm=reverse ctermbg=None
 
set viminfo+=n~/.config/vim/.vim/viminfo
set runtimepath+=~/.config/vim/.vim,~/.config/vim/.vim/after
call plug#begin('/Users/arm/.config/vim/.vim/plugged')
Plug 'mbbill/undotree'
call plug#end()

let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

let mapleader = " "
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>
nnoremap <leader>ps :Rg<SPACE>
