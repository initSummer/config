function ProcessWordBook()
  :%s/.\[[0-9]*m//g 
endfunction
autocmd BufRead wordBook :call ProcessWordBook()
