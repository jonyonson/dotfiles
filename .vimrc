

"----------------------------------
" General settings
"----------------------------------
set autoindent
set smartindent
set autoread
set autowrite
set autowriteall
set clipboard=unnamedplus
set colorcolumn=81
set completeopt-=preview
set cursorline
set encoding=utf-8
set expandtab
set list
set listchars=tab:\|\ ,trail:▫
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
"set relativenumber
set ruler
"set formatoptions=tcqron
set softtabstop=2
set tabstop=2
set textwidth=80
set title
set updatetime=100

" store viminfo in ~/.vim/.viminfo
set viminfo+=n~/.vim/.viminfo

let mapleader = ","

"set autowrite

"map <C-n> :cnext<CR>
"map <C-m> :cprevious<CR>
"nnoremap <leader>a :cclose<CR>

"autocmd FileType go nmap <leader>r <Plug>(go-run)

"let g:go_list_type = "quickfix"

"autocmd FileType go nmap <leader>t <Plug>(go-test)

" run :GoBuild or GoTestCompile based on the go file
"function! s:build_go_files()
"	let l:file = expand('%')
"	if l:file=~# '^\f\+_test\.go$'
"		call go#test#Test(0, 1)
"	elseif l:file =~# '^\f\+\.go$'
"		call go#cmd#Build(0)
"	endif
"endfunction

"autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
"autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

"let g:go_fmt_command = "goimports"
