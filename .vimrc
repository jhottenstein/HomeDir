
set virtualedit=block       "make block selecting not weird
set directory=/var/tmp,/tmp "set swap file directory
set laststatus=2 "always show status line
set wildmode=list:longest   "make autocomplete not suck
set showmatch    "show matching paren when typed
set autowrite    

"=====[ Search options ]========================
set hlsearch
set incsearch
 
"=====[ Solarized support ]========================
" 
syntax on
set background=dark
colorscheme solarized

set path+=/usr/local/include

"=====[ Remap space key to something more useful ]========================
" Use space to jump down a page (like browsers do)...
nnoremap <Space> <PageDown>

"=====[ Set default tab/indent settings ]========================
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

"=====[ Set filetype detection with tab/indent settings]========================
set filetype=on
filetype plugin indent on

autocmd FileType make setlocal noexpandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=4 tabstop=4 expandtab cindent
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4 expandtab cindent
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2

"====[ Edit and auto-update this config file and plugins ]==========

augroup VimReload
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"====[ Map gt/gT to run tests in C/Ruby/Javascript ]==========
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

" Run Testacular unit tests with gT (for all) or gt (only test under
" cursor) in command mode
augroup JSTests
  autocmd!
  autocmd BufEnter *Spec.js
    \ :nmap gt :<C-U>!jake test:units<CR>|
    \ :nmap gT :<C-U>!jake test:units<CR>
  autocmd BufLeave *Spec.js
    \ :nmap gt <NoP>|
    \ :nmap gT <NoP>
  autocmd BufEnter *Scenarios.js
    \ :nmap gt :<C-U>!jake test:e2e<CR>|
    \ :nmap gT :<C-U>!jake test:e2e<CR>
  autocmd BufLeave *Scenarios.js
    \ :nmap gt <NoP>|
    \ :nmap gT <NoP>
augroup END

" Treat arduino files like cpp

au BufRead,BufNewFile *.pde set filetype=cpp
au BufRead,BufNewFile *.ino set filetype=cpp
