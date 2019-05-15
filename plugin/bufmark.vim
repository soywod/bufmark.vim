if exists('g:bufmark_loaded') | finish | endif
let g:bufmark_loaded = 1

let s:buf_marks = {}

let default_mappings = [
  \['<a-)>', '<a-0>'],
  \['<a-!>', '<a-1>'],
  \['<a-@>', '<a-2>'],
  \['<a-#>', '<a-3>'],
  \['<a-$>', '<a-4>'],
  \['<a-%>', '<a-5>'],
  \['<a-^>', '<a-6>'],
  \['<a-&>', '<a-7>'],
  \['<a-*>', '<a-8>'],
  \['<a-(>', '<a-9>'],
\]

function! s:bufmark_save(index)
  let s:buf_marks[string(a:index)] = bufname('%')
  echo 'Bufmark set!'
endfunction

function! s:bufmark_load(index)
  try
    execute 'buffer ' . s:buf_marks[string(a:index)]
  catch
    echohl ErrorMsg
    echo 'Bufmark not set'
    echohl None
  endtry
endfunction

for index in range(len(default_mappings))
  let [key_save, key_load] = default_mappings[index]

  let plug_save = printf('<plug>(bufmark-save-%d)', index)
  let plug_load = printf('<plug>(bufmark-load-%d)', index)

  execute 'nnoremap <nowait>          <plug>(bufmark-save-'.index.') :call <sid>bufmark_save('.index.')<cr>'
  execute 'nnoremap <nowait> <silent> <plug>(bufmark-load-'.index.') :call <sid>bufmark_load('.index.')<cr>'

  if !hasmapto(plug_save, 'n')
    execute printf('nmap %s %s', key_save, plug_save)
  endif

  if !hasmapto(plug_load, 'n')
    execute printf('nmap <nowait> %s %s', key_load, plug_load)
  endif
endfor
