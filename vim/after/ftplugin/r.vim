if has("autocmd")
  " configure tabwidth and insert spaces instead of tabs
  setlocal tabstop=2        " tab width is 2 spaces
  setlocal shiftwidth=2     " indent also with 2 spaces
  setlocal softtabstop=2    " remove 2 spaces with backspace
  setlocal expandtab        " expand tabs to spaces

  " imap _ <-
endif
