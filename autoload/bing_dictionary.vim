function! bing_dictionary#OpenBottom(buf_name)
  let save_splitbelow = &splitbelow
  set splitbelow
  if bufexists(a:buf_name)
    if bufwinnr(a:buf_name) == -1
      execute "sbuffer " . bufnr(a:buf_name)
    else
      execute bufwinnr(a:buf_name) . 'wincmd w'
    end
  else
    execute "new " . a:buf_name
  endif
  let &splitbelow = save_splitbelow
endfunction
