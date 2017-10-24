function! Cgates()
  echo "Hello there"
endfunction

autocmd!
autocmd BufNewFile *.h :call Cgates()<cr>

iabbrev email vincycelebrity
