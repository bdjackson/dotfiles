if has("autocmd")
  " configure tabwidth and insert spaces instead of tabs
  setlocal tabstop=8        " tab width is 4 spaces
  setlocal shiftwidth=8     " indent also with 4 spaces
  setlocal softtabstop=8    " remove 4 spaces with backspace
  setlocal expandtab        " expand tabs to spaces

  imap _ <-
endif
