set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

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
