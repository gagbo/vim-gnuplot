" System vim detection should already mark #!'d scripts properly
" So here there are only auto commands
autocmd BufNewFile,BufRead *.gnu setfiletype gnuplot
autocmd BufNewFile,BufRead *.plt setfiletype gnuplot
autocmd BufNewFile,BufRead *.gpi setfiletype gnuplot
autocmd BufNewFile,BufRead *.gih setfiletype gnuplot
autocmd BufNewFile,BufRead *.gp setfiletype gnuplot
autocmd BufNewFile,BufRead *.gnuplot setfiletype gnuplot
