" Indent for Gnuplot
" Only does line continuation for now
setlocal indentexpr=GnuplotIndent()

function! GnuplotIndent()
    let l:line = getline(v:lnum)
    let l:previousNum = prevnonblank(v:lnum -1)
    let l:previous = getline(l:previousNum)

    if l:previous =~# '\\\s*$'
        return indent(l:previousNum) + &tabstop
    endif

    return indent(l:previousNum)
endfunction
