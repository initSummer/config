" " Author        : Summer
" Description   : func SummerInfo
" 
" Revision      : 
" Rev.    Date        Designer    Description
" 1.0     2023-11-06  Summer      Initial version
" 1.1     2024-03-14  Summer      change comment symbol 
" 1.2     2024-03-17  Summer      add .sh comment
" 

function SummerInfo()
  let username = $SUMMER_USER_NAME
  let year = strftime("%Y")
  let date = strftime("%Y-%m-%d")

  let comment_symbol="!"
  if &filetype == 'cc' || &filetype == 'cpp' || &filetype == 'h' || &filetype == 'c'
    let comment_symbol="//"
  elseif &filetype == 'python'
    let comment_symbol="#"
  elseif &filetype == 'vim'
    let comment_symbol="\""
  elseif &filetype == 'sh'
    let comment_symbol="#"
  endif

  let info = [
#        \printf("%s ", &filetype),
        \printf("%s ", comment_symbol),
        \printf("%s Author        : %s", comment_symbol, username),
        \printf("%s Description   : Make a short description for your file", comment_symbol),
        \printf("%s ", comment_symbol),
        \printf("%s Revision      :", comment_symbol),
        \printf("%s %-8s%-12s%-12s%-s", comment_symbol, "Rev.", "Date", "Designer", "Description"),
        \printf("%s %-8s%-12s%-12s%-s", comment_symbol, "1.0", date, username, "Initial version"),
        \printf("%s ", comment_symbol)]
  return join(info, "\n")
endfunction
:iab __summerinfo__ <C-R>=SummerInfo()<C-R>
:iab __info__ <C-R>=SummerInfo()<C-R>
