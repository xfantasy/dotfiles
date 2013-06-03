set nocompatible

"让vimrc保存时自动生效
au! bufwritepost vimrc source ~/.vimrc

" bundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" http://vim-scripts.org/vim/scripts.html
" vim script list
Bundle "jQuery"
Bundle "altercation/vim-colors-solarized"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "mattn/zencoding-vim"
Bundle "xfantasy/vim-velocity"
Bundle "css3-syntax-plus"
Bundle "xfantasy/jsbeautify"
Bundle "xfantasy/snipMate"
Bundle "vim-scripts/nginx.vim"
Bundle "taglist-plus"
Bundle "statianzo/vim-jade"
Bundle "groenewege/vim-less"
Bundle "kchmck/vim-coffee-script"
Bundle "othree/coffee-check.vim"
Bundle "rizzatti/funcoo.vim"
Bundle "rizzatti/dash.vim"
Bundle "grep.vim"
Bundle "AutoComplPop"
Bundle "hallettj/jslint.vim"


"-------------------------------------
"Bundle "skammer/vim-css-color"
"Bundle "othree/html5.vim"
"Bundle "L9"
"Bundle "FuzzyFinder"

Bundle "pangloss/vim-javascript"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" basic
set wrap
set autochdir
set history=128
set backspace=indent,eol,start
set tabstop=4        "tab宽度
set shiftwidth=4     "每个tab键=4空格
"set softtabstop=4
set expandtab
set helplang=cn,en    "显示中文帮助
set mouse=a
set number
set hlsearch
set cc=81
"set dictionary+=$HOME/.vim/dict/words
set dictionary+=$HOME/.vim/dict/pop.dict
set spell
syntax on


" search
set hlsearch
set showmatch        "匹配{}()
set incsearch        "快速查找
set ignorecase

" folding
if has("folding")
    set foldenable
    set foldmethod=syntax
    set foldcolumn=1
    set foldminlines=5
    set foldlevel=2
    set foldnestmax=3
endif

" statusbar
set wildmenu        "show cmd in statusline
set ruler            "状态栏显示行列
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
set showcmd
set showmode
if has("statusline")
    set laststatus=2
set statusline=%n\ %F%m%r%h%y[%{&fileformat},\ %{&fileencoding}%{((exists(\"+bomb\")\ &&\ &bomb)?\"+\":\"\")}]\ %w%=(%b,0x%B)\ (%l,%c)\ %P\ %{&wrap?'WR':'NW'}\ %{&ic?'IC':'CS'}\ 
endif

" multi byte
set fileformat=unix
if has("multi_byte")
    language messages en_US.utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    set formatoptions+=mm
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
endif

"set undofile
set undofile
set undodir=~/.vim/_undodir
set undolevels=50

" use Alt-n to switch tab
for i in range(1, min([&tabpagemax, 9]))
    execute 'nmap <A-'.i.'> '.i.'gt'
endfor

" plugins setting
" syntastic check
let g:yntastic_check_on_open=0
let g:syntastic_check_on_save=1
let loaded_html_syntax_checker=1

"vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" NERDTree
let NERDTreeShowBookmarks=1
let Tlist_Use_Right_Window=1
let Tlist_javascript_Hide_Extras=['type']
let Tlist_Auto_Highlight_Tag=1
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Ctags_Cmd='/usr/local/bin/jsctags'


"AutoComplPop
let g:acp_completeOption='.,w,b,u,t,i,k'
let g:acp_behaviorSnipmateLength=1

"grep
let Grep_Skip_Files = '*.bak *.svn .*'


"filetype
filetype indent on
setlocal omnifunc=syntaxcomplete#Complete
au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.vm setlocal ft=html fileencoding=gbk syntax=velocity
au BufRead,BufNewFile *.coffee set ft=coffee
au BufRead,BufNewFile /etc/nginx/* set ft=nginx
au FileType javascript setlocal smartindent omnifunc=javascriptcomplete#CompleteJS dictionary+=$HOME/.vim/dict/node.dict dictionary+=$HOME/.vim/dict/javascript.dict
au FileType css setlocal syntax=css omnifunc=csscomplete#CompleteCSS
au FileType python setlocal omnifunc=pythoncomplete#Complete tabstop=4 shiftwidth=4 softtabstop=4
au FileType htm,html,xhtml setlocal omnifunc=htmlcomplete#CompleteTags tabstop=4 shiftwidth=4 softtabstop=4 dictionary+=$HOME/.vim/dict/javascript.dict
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType php setlocal omnifunc=phpcomplete#CompletePHP
au FileType java setlocal omnifunc=javacomplete#Complete


" key
let mapleader = ","
set backspace=indent,eol,start
set mouse=a
map <Tab> <C-w><C-w>
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>
map <F4> :TlistToggle<CR>
map <F10> :!svn update<CR>
map <F11> :!svn diff<CR>
map <F12> :!svn commit --message=''<LEFT>

"grep
nmap <F5> :rgrep <cword> *<CR>

" fuzzyFinder
"let g:fuf_modesDisable = []
"let g:fuf_mrufile_maxItem = 400
"let g:fuf_mrucmd_maxItem = 400
"nnoremap <silent> sj     :FufBuffer<CR>
"nnoremap <silent> sd     :FufDir<CR>
"nnoremap <silent> sn     :FufMruFile<CR>
"nnoremap <silent> sy     :FufLine<CR>
"nnoremap <silent> sk     :FufFileWithFullCwd<CR>
"nnoremap <silent> st     :FufTag<CR>
"nnoremap <silent> sm     :FufMruCmd<CR>
"nnoremap <silent> sf     :FufFile<CR>
"nnoremap <silent> sp     :FufChangeList<CR>
"nnoremap <silent> sg     :FufTaggedFile<CR>
"nnoremap <silent> sG     :FufTaggedFile!<CR>
"nnoremap <silent> s,     :FufBufferTag<CR>
"nnoremap <silent> s<     :FufBufferTag!<CR>
"nnoremap <silent> so     :FufBookmarkDirAdd<CR>
"nnoremap <silent> si     :FufBookmarkDir<CR>
"nnoremap <silent> s.     :FufBufferTagAll<CR>

" dash
nmap <leader>dv :silent !open dash://velocity:<cword><cr>
nmap <leader>dj :silent !open dash://js:<cword><cr>
nmap <leader>dq :silent !open dash://jq:<cword><cr>
nmap <leader>dh :silent !open dash://html:<cword><cr>
nmap <leader>dc :silent !open dash://css:<cword><cr>
nmap <leader>dm :silent !open dash://vim:<cword><cr>


"自动完成右括号 
fun! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

" gui setting
" Highlight
"set cursorline
"set cursorcolumn
if has("gui_running")
    set list
    set listchars=tab:\ \ ,eol:↓
    set transparency=0  
    set imactivatekey=D-space
    "set transparency=3  "透明度
    set guioptions=egmrLt       
    "winsize 100 40
    set guifont=Menlo:h13
    set linespace=1
    "colorscheme molokai "主题
    colorscheme solarized "主题
    set background=dark
else
    colorscheme solarized "主题
    set background=dark
    "let g:solarized_termcolors=256
    set guifont=Menlo:h10
end

