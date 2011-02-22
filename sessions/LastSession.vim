let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>ragtagXmlV ="&#".getchar().";"
inoremap <BS> =Backspace()
inoremap <C-Up> :m-2==gi
inoremap <C-Down> :m+==gi
inoremap <silent> <S-Tab> =BackwardsSnippet()
noremap  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
nmap 	 
xmap 	 >gv
noremap <NL> j
noremap  k
noremap  l
nnoremap  maO`a
snoremap  b<BS>
noremap s :TCommentAs =&ft_
noremap n :TCommentAs =&ft 
noremap a :TCommentAs 
noremap b :TCommentBlock
vnoremap <silent> r :TCommentRight
vnoremap <silent> i :TCommentInline
nnoremap <silent> r :TCommentRight
onoremap <silent> r :TCommentRight
noremap   :TComment 
noremap <silent> p m`vip:TComment``
vnoremap <silent>  :TCommentMaybeInline
nnoremap <silent>  :TComment
onoremap <silent>  :TComment
snoremap % b<BS>%
snoremap ' b<BS>'
map <silent> ,cd <Plug>RooterChangeToRootDirectory
map <silent> ,p <Plug>PeepOpen
noremap ,_s :TCommentAs =&ft_
noremap ,_n :TCommentAs =&ft 
noremap ,_a :TCommentAs 
noremap ,_b :TCommentBlock
vnoremap <silent> ,_r :TCommentRight
nnoremap <silent> ,_r :TCommentRight
onoremap <silent> ,_r :TCommentRight
vnoremap <silent> ,_i :TCommentInline
noremap ,_  :TComment 
noremap <silent> ,_p vip:TComment
vnoremap <silent> ,__ :TCommentMaybeInline
nnoremap <silent> ,__ :TComment
onoremap <silent> ,__ :TComment
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
map ,t :FufFile **/
nmap <silent> ,m :nohlsearch
map ,b :TMiniBufExplorer
map ,/ :TlistToggle
map ,. gg=G
map ,n :NERDTreeToggle
map ,tm :tabmove
map ,tl :tablast
map ,tf :tabfirst
map ,tp :tabprevious
map ,tn :tabnext
map ,to :tabonly
map ,tc :tabclose
map ,te :tabedit
map ,tt :tabnew
vnoremap ;; 
vmap < <gv
vmap > >gv
inoremap ï o
xmap S <Plug>VSurround
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
map fj %
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> gC :TCommentMaybeInline
nnoremap <silent> gCc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineAnywayg@$
nnoremap <silent> gC :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorAnywayg@
vnoremap <silent> gc :TCommentMaybeInline
nnoremap <silent> gcc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#OperatorLineg@$
nnoremap <silent> gc :let w:tcommentPos = getpos(".") | set opfunc=tcomment#Operatorg@
xmap gS <Plug>VgSurround
vnoremap ij 
vnoremap ii 
xmap s <Plug>Vsurround
vnoremap v 
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
vnoremap <C-Up> :m-2gv=gv
vnoremap <C-Down> :m'>+gv=gv
nnoremap <C-Up> :m-2==
nnoremap <C-Down> :m+==
xmap <S-Tab> <gv
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
imap  <Plug>DiscretionaryEnd
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
inoremap s :TCommentAs =&ft_
inoremap n :TCommentAs =&ft 
inoremap a :TCommentAs 
inoremap b :TCommentBlock
inoremap <silent> r :TCommentRight
inoremap   :TComment 
inoremap <silent> p :norm! m`vip:TComment``
inoremap <silent>  :TComment
map! ;;  " map ;; to Esc
map è 5h
map ì 5l
map ê 5j
map ë 5k
cmap dojo call Dojo()
map! ij  " map jj to Esc
map! ii  " map ii to Esc
iabbr xdate =strftime("%d/%m/%y %H:%M:%S")
iabbr xasp <%@language=jscript%><%	<BS>%><<O	
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowriteall
set background=dark
set backspace=2
set backup
set backupdir=/tmp
set cindent
set directory=/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set modelines=0
set mouse=a
set report=0
set ruler
set runtimepath=~/.vim,~/.vim/bundle/NERD_tree,~/.vim/bundle/ack,~/.vim/bundle/endwise,~/.vim/bundle/msanders-snipmate.vim,~/.vim/bundle/processing,~/.vim/bundle/taglist_45,~/.vim/bundle/tpope-vim-ragtag,~/.vim/bundle/tpope-vim-rails,~/.vim/bundle/tpope-vim-surround,~/.vim/bundle/tsaleh-vim-tcomment,~/.vim/bundle/vim-as,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-fuzzyfinder,~/.vim/bundle/vim-git,~/.vim/bundle/vim-jade,~/.vim/bundle/vim-markdown,~/.vim/bundle/vim-peepopen,~/.vim/bundle/vim-rooter,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,~/.vim/bundle/msanders-snipmate.vim/after,~/.vim/after
set scrolloff=3
set shiftwidth=2
set shortmess=atI
set showcmd
set smartcase
set smartindent
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set tabstop=2
set tags=tags
set title
set visualbell
set whichwrap=b,s,<,>,h,l
set wildmenu
set wildmode=list:longest
set window=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Downloads/node-v0.4.1
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/.bash_profile
args ~/.bash_profile
edit ~/.bash_profile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
set cursorcolumn
setlocal cursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,=then,=do,=else,=elif,=esac,=fi,=fin,=fil,=done
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 12 - ((11 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
