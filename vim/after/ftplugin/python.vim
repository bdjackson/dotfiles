if has("autocmd")
  " configure tabwidth and insert spaces instead of tabs
  setlocal tabstop=4        " tab width is 4 spaces
  setlocal shiftwidth=4     " indent also with 4 spaces
  setlocal softtabstop=4    " remove 4 spaces with backspace
  setlocal expandtab        " expand tabs to spaces
endif
