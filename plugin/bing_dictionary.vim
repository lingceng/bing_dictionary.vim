if exists('g:loaded_bing_dictonaryvim') || &cp || v:version < 700
  finish
endif
let g:loaded_bing_dictonaryvim = 1

function! Dict(word)
  let translations = systemlist('dict ' . a:word)
  call bing_dictionary#OpenBottom('result.bing_dictionary')
  call append(0, translations)
  normal gg
endfunction
command! -nargs=1 Dict call Dict(<q-args>)
