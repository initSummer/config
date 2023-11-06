" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
filetype on                              " 开启文件类型检测
set encoding=utf-8                       " 编码设置
set expandtab                            " 用space替代tab的输入
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
" set ignorecase		" Do case insensitive matching
" set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned set mouse=a		" Enable mouse usage (all modes)
setlocal noswapfile " 不要生成swap文件
set bufhidden=hide " 当buffer被丢弃的时候隐藏它
set number " 显示行号
" set relativenumber                       " 显示相对行号
"set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 2
set tabstop=2 " 设定 tab 长度为 2
set nobackup " 覆盖文件时不备份
set autochdir " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes " 设置备份时的行为为覆盖
set hlsearch " 搜索时高亮显示被找到的文本
set noerrorbells " 关闭错误信息响铃
set novisualbell " 关闭使用可视响铃代替呼叫
set t_vb= " 置空错误铃声的终端代码
set matchtime=2 " 短暂跳转到匹配括号的时间
set magic " 设置魔术
set backspace=indent,eol,start " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1 " 设定命令行的行数为 1
set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
" set foldenable " 开始折叠
" set foldmethod=syntax " 设置语法折叠
" set foldcolumn=0 " 设置折叠区域的宽度
" setlocal foldlevel=1 " 设置折叠层数为 1
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> " 用空格键来开关折叠
set termguicolors
set tags=./tags,tags;$HOME
" set tags=./.tags;,.tags
"

set clipboard=unnamed	"share clip
let g:markdown_fenced_languages =['c', 'cpp', 'python', 'javascript']
set background=dark
autocmd vimenter * hi Normal guibg=NONE ctermbg=15 " transparent bg
autocmd vimenter * hi Terminal guibg=NONE ctermbg=15 " transparent bg
autocmd terminalopen * hi Normal guibg=NONE ctermbg=NONE " transparent bg
set guifont=Source_Han_Sans:h11

set fillchars=vert:\⎜
set fillchars=eob:\ 
hi VertSplit term=reverse cterm=reverse  gui=none  guifg=#222222
