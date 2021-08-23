function! myspacevim#before() abort
    nnoremap kj <Esc>
endfunction

function! myspacevim#after() abort
    inoremap kj <Esc>
    set mouse=r
endfunction
