" ftplugin/gnuplot.vim

setlocal softtabstop=4
setlocal shiftwidth=4

setlocal commentstring=#\ %s
setlocal completefunc=syntaxcomplete#Complete

compiler gnuplot

if executable('gnuplot')
  if !has('gui_running') && executable('less')
    command! -buffer -nargs=1 RunHelp silent exe '!gnuplot -e "help <args>" 2>/dev/null | less' | redraw!
  elseif has('terminal')
    command! -buffer -nargs=1 RunHelp silent exe ':term gnuplot -e "help <args>"' . (executable('less') ? ' | less' : '')
  else
    command! -buffer -nargs=1 RunHelp echo system('gnuplot -e "help <args>" 2>/dev/null')
  endif
  setlocal keywordprg=:RunHelp
endif
