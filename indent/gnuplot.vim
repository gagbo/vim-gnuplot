" Indent for Gnuplot
" Only does line continuation for now
setlocal indentexpr=GnuplotIndent()

function! GnuplotIndent()
    let l:line = getline(v:lnum)
    let l:previousNum = prevnonblank(v:lnum -1)
    let l:previous = getline(l:previousNum)

    " If the line continues....
    if l:previous =~# '\\\s*$'
        if indent(l:previousNum) == 0
            " ...raise indentation if the previous line was not
            return indent(l:previousNum) + &tabstop
        elseif indent(l:previousNum) != 0
            " ...leave indentation if the previous line was already indented
            return indent(l:previousNum)
        endif
    endif

    return indent(l:previousNum) - &tabstop
endfunction
