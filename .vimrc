"enable pathogen"
execute pathogen#infect()
"global setup"
syntax enable
set number
"tab的寬度"
set tabstop=2
"縮排的寬度"
set shiftwidth=2
"換行時自動縮排"
set autoindent
set smartindent
"螢幕換行時不要切到單字"
set linebreak
"set list "
set listchars=tab:->
"filetype"
au BufNewFile,BufRead *.ejs set filetype=html

"toggle between terminal and vim mouse"
set mouse="a"
map <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call ShowMouseMode()<CR>
imap <silent><F12> :let &mouse=(&mouse == "a"?"":"a")<CR>:call ShowMouseMode()<CR>
function ShowMouseMode()
	if (&mouse == 'a')
		echo "mouse-vim"
	else
		echo "mouse-xterm"
	endif
endfunction

"switch tab"
nnoremap <F2> :tabprevious<CR>
nnoremap <F3> :tabnext<CR>

" map backspce to delete a character
noremap <BS> X
" add a new line without entering insert mode
noremap <CR> o<Esc>
" cancel searched highlight
noremap <ESC><ESC> :nohlsearch<CR>

" next buffer"
map <C-^> :bnext<cr>
nnoremap <C-tab> :bnext<cr>
nnoremap <C-S-tab> :bprev<cr>
nnoremap <C-n> :bnext<CR>

" select ALL"
map <C-A> ggVG

" navigating for long lines
map j gj
map k gk

" Save required stty -ixon "
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

"Vundle setup autoinstall"
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


"bundle power line"
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2
set encoding=utf-8
set t_Co=256
let g:Powerline_symbols = 'fancy'

"NERDTree"
Bundle 'scrooloose/nerdtree'
an 50.20 &View.File\ Viewer<Tab><F5> <ESC>:NERDTreeToggle<CR>
map <F5> <ESC>:NERDTreeToggle<CR> " Toggles NERD Tree view (file viewer)

"theme setup"
Bundle 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

"easymotion"
Bundle 'Lokaltog/vim-easymotion'

"list functions"
Bundle 'taglist.vim'
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=50


" close buffer keep its windows :BD :BW"
Bundle 'bufkill.vim'

"search file"
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"auto complete"
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
let g:SuperTabRetainCompletionType=2
" 0 - 不記錄上次的補全方式
" 1 - 記住上次的補全方式,直到用其他的補全命令改變它
" 2 - 記住上次的補全方式,直到按ESC退出插入模式為止
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 設置按下<Tab>後默認的補全方式, 默認是<C-P>,
" 現在改為<C-X><C-O>. 關於<C-P>的補全方式,
" 還有其他的補全方式, 你可以看看下面的一些幫助:
" :help ins-completion
" :help compl-omni
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
"自動關閉預覽視窗(Preview Window)
"ref: http://allen501pc.wordpress.com/2009/12/17/%E6%88%91%E7%9A%84-vim-%E8%A8%AD%E5%AE%9A%E9%85%8D%E7%BD%AE/


" map ctrl+c and ctrl+v
"noremap <C-c> y
"noremap <C-v> P

"map <UP> gk
"map <DOWN> gj
"imap <UP> <ESC>gk<RIGHT>i
"imap <DOWN> <ESC>gj<RIGHT>i


