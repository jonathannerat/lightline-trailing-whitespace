let s:indicator = get(g:, 'lightline#trailing_whitespace#indicator', 'trailing')

function! lightline#trailing_whitespace#component()
	let l:lineno = search('\s$', 'nw')
  return l:lineno != 0 ? s:indicator . ' [' . l:lineno . ']' : ''
endfunction
