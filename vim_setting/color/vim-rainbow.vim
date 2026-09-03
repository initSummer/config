"
" Author        : Summer
" Description   : Configure rainbow parentheses
"
" Revision      :
" Rev.    Date        Designer    Description
" 1.0     2026-09-03  Summer      Initial version
"

" 开启彩虹括号（1为默认开启，0为手动 :RainbowToggle 开启）
let g:rainbow_active = 1

" GUI 模式下的颜色
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']

" 终端（CTerm）模式下的颜色，适配你之前的青色主题
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

" 针对 Vim 7.5 的兼容性配置，防止报错
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\ }
