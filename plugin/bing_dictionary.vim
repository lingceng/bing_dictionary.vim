if exists('g:loaded_bing_dictonaryvim') || &cp || v:version < 700
  finish
endif
let g:loaded_bing_dictonaryvim = 1

function! Dict(word)
  let translations = systemlist('dict ' . a:word)

  let save_splitbelow = &splitbelow
  set splitbelow

  let buf_name = 'bing_dictionary'
  if bufexists(buf_name)
    if bufwinnr(buf_name) == -1
      execute len(translations) . "sbuffer " . bufnr(buf_name)
    else
      execute bufwinnr(buf_name) . 'wincmd w'
    end
  else
    execute len(translations) . "new " . buf_name
  endif
  let &splitbelow = save_splitbelow

  " Borrow from AnsiEsc.vim
  syntax match ansiStop conceal '\e\[3\dm'
  syntax match ansiStop conceal '\e\[0m'
  syn region ansiGreen  start="\e\[32m" end="\e\["me=e-2 contains=ansiStop
  syn region ansiYellow start="\e\[33m" end="\e\["me=e-2 contains=ansiStop
  syn region ansiBlue   start="\e\[34m" end="\e\["me=e-2 contains=ansiStop
  highlight def link ansiStop   Ignore
  highlight def link ansiGreen  Type
  highlight def link ansiYellow Keyword
  highlight def link ansiBlue   Comment

  call append(0, translations)
  normal gg

  nnoremap <buffer> q :q!<CR>
  cnoremap <buffer> q :q!
endfunction
command! -nargs=1 Dict call Dict(<q-args>)
