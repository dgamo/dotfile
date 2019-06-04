for f in split(glob('~/.config/nvim/modules/*.vim'), '\n')
  exe 'source' f
endfor

