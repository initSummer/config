set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'joshdick/onedark.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'luochen1990/rainbow'

Plugin 'Yggdroot/LeaderF'

Plugin 'Yggdroot/indentLine'

Plugin 'preservim/nerdtree'

Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line


runtime! debian.vim
if has("syntax")
  syntax on
endif
if has("autocmd")
  filetype plugin indent on
endif

source ~/MyConfig/vimconfig/normal.vim
" source ~/MyConfig/vimconfig/coc_nvim.vim
source ~/MyConfig/vimconfig/rainbow.vim
" source ~/MyConfig/vimconfig/neoformat.vim
" source ~/MyConfig/vimconfig/AsyncRun.vim
source ~/MyConfig/vimconfig/airline.vim
" source ~/MyConfig/vimconfig/nerdtree.vim
" source ~/MyConfig/vimconfig/coc_explorer.vim
" source ~/MyConfig/vimconfig/telescope.vim
source ~/MyConfig/vimconfig/youcompleteme.vim
" source ~/MyConfig/vimconfig/tagbar.vim
source ~/MyConfig/vimconfig/indentLine.vim
source ~/MyConfig/vimconfig/LeaderfFunction.vim
source ~/MyConfig/vimconfig/processWordBook.vim
source ~/MyConfig/vimconfig/setCpp.vim

