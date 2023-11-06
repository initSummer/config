"
" Author        : Summer
" Description   : func SummerInfo
" 
" Revision      : 
" Rev.    Date        Designer    Description
" 1.0     2023-11-06  Summer      Initial version
" 

function SummerInfo()
  let username = "Summer"
  let year = strftime("%Y")
  let date = strftime("%Y-%m-%d")
  let info = ['//',
        \printf("\/\/ Author        : %s", username),
        \'// Description   : Make a short description for your file',
        \'// ',
        \'// Revision      : ',
        \printf("\/\/ %-8s%-12s%-12s%-s", "Rev.", "Date", "Designer", "Description"),
        \printf("\/\/ %-8s%-12s%-12s%-s", "1.0", date, username, "Initial version"),
        \'// ']
  return join(info, "\n")
endfunction
:iab __summerinfo__ <C-R>=SummerInfo()<C-R>
