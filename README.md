# vim-gnuplot

A collection of settings (and maybe functions) to make vim go well with gnuplot

# Run as Jobs

To run gnuplot in the background, run it by a `:Make` command (instead of `:make` or `:lmake`), such as

- that of [vim-dispatch](https://github.com/tpope/vim-dispatch) or,
- with [AsyncRun.vim](https://github.com/skywind3000/asyncrun.vim/) installed, that defined by

    ```vim
    command! -bang -nargs=* -complete=file -bar Make AsyncRun<bang> -auto=make -program=make
    ```

    To avoid empty lines in the quickfix list, add `let g:asyncrun_trim = 1` to your `vimrc`.
    Other [options](https://github.com/skywind3000/asyncrun.vim/wiki/Options), such as `g:asyncrun_save` might be of interest.
