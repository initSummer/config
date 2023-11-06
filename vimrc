set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"Plugin 'joshdick/onedark.vim'
"
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"
"Plugin 'luochen1990/rainbow'
"
"Plugin 'Yggdroot/LeaderF'
"
"Plugin 'Yggdroot/indentLine'
"
"Plugin 'preservim/nerdtree'
"
"Plugin 'ycm-core/YouCompleteMe'
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line



" func 
" summer info
source ~/.summerConfig/vimconfig/SummerInfo.vim
" nerdtree
set runtimepath+=~/.summerConfig/vimplugin/nerdtree
source ~/.summerConfig/vimconfig/nerdtree.vim
" vim setting
source ~/.summerConfig/vimconfig/setting.vim

" color
" aireline
set runtimepath+=~/.summerConfig/vimplugin/vim-airline
set runtimepath+=~/.summerConfig/vimplugin/vim-airline-themes
source ~/.summerConfig/vimcolor/airline.vim
" onedark
set runtimepath+=~/.summerConfig/vimplugin/onedark.vim
source ~/.summerConfig/vimcolor/onedark.vim

source ~/.summerConfig/vimconfig/iab.vim
source ~/.summerConfig/vimconfig/map.vim
