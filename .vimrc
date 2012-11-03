set incsearch
set expandtab
set tabstop=2
set autoindent
set showmatch
set autowrite
set hlsearch
syntax on
set background=dark
colorscheme solarized
set path+=/usr/local/include

augroup CTests
  autocmd!
  autocmd BufNewFile *_test.c 0r ~/.vim/skeleton_test.c
  autocmd BufEnter *_test.c
    \ :nmap gT :<C-U>!gcc -fnested-functions -DUNIT_TESTING -L /usr/local/lib/libcmockery.a -o %< % <C-R>=substitute(expand("%"), "_test", "", "")<CR> && ./%<<CR>
  autocmd BufLeave *_test.c
    \ :nmap gT <NoP>
augroup END

" Run Ruby unit tests with gT (for all) or gt (only test under
" cursor) in command mode
augroup RubyTests
  autocmd!
  autocmd BufRead,BufNewFile *_test.rb,test_*.rb
    \ :nmap gt V:<C-U>!$HOME/.vim/bin/ruby-run-focused-unit-test 
    \ % <C-R>=line("'<")<CR>p <CR>|
    \ :nmap gT :<C-U>!ruby -I"test:lib" %<CR>
augroup END

augroup CSource
  autocmd!
  autocmd BufRead,BufNewFile *.c
    \ :nmap gc :!gcc -o %< %<CR>
    \ :nmap gr :!gcc -o %< % && ./%<<CR>
    \ :nmap gm :!man 3 <cword><CR> 
augroup END


autocmd FileType make setlocal noexpandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab cindent

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=htmlcomplete#CompleteCSS
