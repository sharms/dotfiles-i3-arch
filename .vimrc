"pathogen
execute pathogen#infect()

" lines numbers
set nu
syntax on
filetype plugin indent on
set background=dark
set mouse=r
set ruler		" show the cursor position all the time
set autoindent		" always set autoindenting on
set wildmenu

" tab 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" brackets highlight color
autocmd VimEnter,Colorscheme * :hi MatchParen cterm=none ctermbg=white ctermfg=black

" remember last cursor place
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" syntaxline

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" powerline
set laststatus=2
set t_Co=256
let g:powerline_pycmd="py3"

" go
set autowrite
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
