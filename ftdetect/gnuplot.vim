" System vim detection should already mark #!'d scripts properly
" So here there are only auto commands
autocmd BufNewFile,BufRead *.plt setfiletype gnuplot
autocmd BufNewFile,BufRead *.plot setfiletype gnuplot
autocmd BufNewFile,BufRead *.gp setfiletype gnuplot
