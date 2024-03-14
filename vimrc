"
" Author        : Summer
" Description   : Make a short description for your file
" 
" Revision      : 
" Rev.    Date        Designer    Description
" 1.0     2023-11-07  Summer      Initial version
" 

set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim

" func 
" summer info
source ${SUMMER_CONFIG_DIR}/vimconfig/SummerInfo.vim
" nerdtree
set runtimepath+=${SUMMER_CONFIG_DIR}/vimplugin/nerdtree
source ${SUMMER_CONFIG_DIR}/vimconfig/nerdtree.vim
" vim setting
source ${SUMMER_CONFIG_DIR}/vimconfig/setting.vim

" color
" aireline
set runtimepath+=${SUMMER_CONFIG_DIR}/vimplugin/vim-airline
set runtimepath+=${SUMMER_CONFIG_DIR}/vimplugin/vim-airline-themes
source ${SUMMER_CONFIG_DIR}/vimcolor/airline.vim
" onedark
set runtimepath+=${SUMMER_CONFIG_DIR}/vimplugin/onedark.vim
source ${SUMMER_CONFIG_DIR}/vimcolor/onedark.vim

source ${SUMMER_CONFIG_DIR}/vimconfig/iab.vim
source ${SUMMER_CONFIG_DIR}/vimconfig/map.vim
