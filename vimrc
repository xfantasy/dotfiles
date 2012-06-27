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
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "pangloss/vim-javascript"
Bundle "ervandew/supertab"
Bundle "scrooloose/syntastic"
Bundle "mattn/zencoding-vim"
Bundle "lepture/vim-velocity"
Bundle "css3-syntax-plus"
Bundle "altercation/vim-colors-solarized"
Bundle "jsbeautify"
Bundle "snipMate"
Bundle "jQuery"
"-------------------------------------下面的版本有可能导致不稳定
Bundle "L9"
Bundle "FuzzyFinder"
Bundle "taglist-plus"
"Bundle "Command-T"
"Bundle "tpope/vim-surround"

" basic
set wrap
set autochdir
set history=128
set backspace=indent,eol,start
set tabstop=4        "tab宽度
set shiftwidth=4     "每个tab键=4空格
set softtabstop=4
set expandtab
set helplang=cn,en    "显示中文帮助
set mouse=a
set number
set hlsearch
set list
set cc=81
set listchars=tab:→\ ,eol:↓
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
let g:syntastic_check_on_open=0
let g:syntastic_check_on_save=1
let loaded_html_syntax_checker=0
"vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"
" NERDTree
let NERDTreeShowBookmarks=1
let Tlist_Use_Right_Window=1
let Tlist_javascript_Hide_Extras=['type']

"filetype
filetype indent on
au BufRead,BufNewFile *.less set ft=css
au BufRead,BufNewFile *.json set ft=javascript
au FileType javascript setlocal smartindent textwidth=80 omnifunc=javascriptcomplete#CompleteJS
au FileType css setlocal syntax=css omnifunc=csscomplete#CompleteCSS
au FileType python setlocal textwidth=79 omnifunc=pythoncomplete#Complete
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType java set omnifunc=javacomplete#Complete
au BufRead,BufNewFile *.vm setlocal ft=html fileencoding=gbk syntax=velocity

" function
func! ToggleWrapping()
    if &wrap == 1
        set nowrap
    else
        set wrap
    endif
endf

" key
let mapleader = ","
set backspace=indent,eol,start
set mouse=a
map <Tab> <C-w><C-w>
map <F2> :!svn update<CR>
map <F3> :!svn commit --message=''<LEFT>
map <F4> :NERDTreeToggle<CR>
map <F5> :NERDTreeFind<CR>
map <F6> :TlistToggle<CR>
" fuzzyFinder
let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> sj     :FufBuffer<CR>
nnoremap <silent> sd     :FufDir<CR>
nnoremap <silent> sn     :FufMruFile<CR>
nnoremap <silent> sy     :FufLine<CR>
nnoremap <silent> sk     :FufFileWithFullCwd<CR>
nnoremap <silent> st     :FufTag<CR>
nnoremap <silent> sm     :FufMruCmd<CR>
nnoremap <silent> sf     :FufFile<CR>
nnoremap <silent> sp     :FufChangeList<CR>
nnoremap <silent> sg     :FufTaggedFile<CR>
nnoremap <silent> sG     :FufTaggedFile!<CR>
nnoremap <silent> s,     :FufBufferTag<CR>
nnoremap <silent> s<     :FufBufferTag!<CR>
nnoremap <silent> so     :FufBookmarkDirAdd<CR>
nnoremap <silent> si     :FufBookmarkDir<CR>
nnoremap <silent> s.     :FufBufferTagAll<CR>
"nnoremap <silent> sL     :FufCoverageFileChange<CR>
"nnoremap <silent> s<C-l> :FufCoverageFileRegister<CR>
"nnoremap <silent> sd     :FufDirWithCurrentBufferDir<CR>
"nnoremap <silent> sD     :FufDirWithFullCwd<CR>
"nnoremap <silent> su     :FufBookmarkFile<CR>
"nnoremap <silent> s<C-u> :FufBookmarkFileAdd<CR>
"vnoremap <silent> s<C-u> :FufBookmarkFileAddAsSelectedText<CR>
"nnoremap <silent> sT     :FufTag!<CR>
"nnoremap <silent> s<C-]> :FufTagWithCursorWord!<CR>
"vnoremap <silent> s,     :FufBufferTagWithSelectedText!<CR>
"vnoremap <silent> s<     :FufBufferTagWithSelectedText<CR>
"nnoremap <silent> s}     :FufBufferTagWithCursorWord!<CR>
"nnoremap <silent> s>     :FufBufferTagAll!<CR>
"vnoremap <silent> s.     :FufBufferTagAllWithSelectedText!<CR>
"vnoremap <silent> s>     :FufBufferTagAllWithSelectedText<CR>
"nnoremap <silent> s]     :FufBufferTagAllWithCursorWord!<CR>
"nnoremap <silent> so     :FufJumpList<CR>
"nnoremap <silent> se     :FufEditDataFile<CR>
"nnoremap <silent> sr     :FufRenewCache<CR>


" gui setting
if has("gui_running")
    set transparency=0  
    set imactivatekey=D-space
    set transparency=0  "透明度
    set guioptions=egmrLt       
    "winsize 90 60
    set guifont=Menlo:h12
    set linespace=2
    colorscheme molokai "主题
    " Highlight
    set cursorline
    set cursorcolumn
else
    set guifont=Monaco:h10
    set background=dark
    let g:solarized_termcolors=256
    colorscheme solarized
end
