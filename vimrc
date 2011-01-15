"
" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.



au FocusLost * silent :wa                " Autosave!
au BufLeave * silent :wa               " Autosave!
set autowriteall                  " autowrite the buffers 

"atlas to actionscript
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.

filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set history=1000                  " how many lines of history to remember  

set spell                         " spell chacking on

" set clipboard+=unnamed clipboard  " share clipboard with windows clipboard

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

" set backspace=indent,eol,start    " Intuitive backspacing.
set backspace=2

set hidden                        " Handle multiple buffers better.
set whichwrap+=<,>,h,l
set mouse=a                       " use mouse anywhere

set shortmess=atI                 " shortens messages to avoid 'press a key' prompt

set report=0                      " tell us when any line is changed via :

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

" INDENTATION
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
" set cinkeys=0{,0},:,0#,!,!^F

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" colorscheme vividchalk
colorscheme ir_black
set bg=dark

let mapleader="," "Alter the <leader>, carefull

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

map <leader>n :NERDTreeToggle<cr>
map <leader>. gg=G
"taglist
map <leader>/ :TlistToggle<cr>
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
let Tlist_File_Fold_Auto_Close = 1
set tags=tags

"minibuffer explorer
map <Leader>b :TMiniBufExplorer<cr>
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplModSelTarget = 1

nmap <silent> <leader>m :nohlsearch<CR>
map! ii <Esc> " map ii to Esc
map! ij <Esc> " map jj to Esc
map! ;; <Esc> " map ;; to Esc
vno ii <esc>
vno ij <esc>
vno ;; <esc>
vno v <esc>

vmap > >gv
vmap < <gv
vmap <Tab> >gv
vmap <S-Tab> <gv
imap <Tab> <c-n>
imap <S-Tab> <c-p>

nmap <tab> <c-w>
map fj %

" Uncomment to use Jamis Buck's file opening plugin
map <Leader>t :FufFile **/<CR>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" Automatic fold settings for specific files. Uncomment to use. 
set foldmethod=syntax
autocmd FileType ruby setlocal foldmethod=syntax
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

" "move lines up and down with shift
nnoremap <c-down> :m+<CR>==
nnoremap <c-up> :m-2<CR>==
inoremap <c-down> <Esc>:m+<CR>==gi
inoremap <c-up> <Esc>:m-2<CR>==gi
vnoremap <c-down> :m'>+<CR>gv=gv
vnoremap <c-up> :m-2<CR>gv=gv

nnoremap <CR> maO<esc>`a

func Backspace()
  if col('.') == 1
    if line('.')  != 1
      return  "\<ESC>kA\<Del>"
    else
      return ""
    endif
  else
    return "\<Left>\<Del>"
  endif
endfunc

inoremap <BS> <c-r>=Backspace()<CR>

"BACKUPS
set backup
if has("win32") || has("win64")
  set directory=$TMP
  set backupdir=$TMP
else
  set directory=/tmp
  set backupdir=/tmp
end




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save sessions 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au VimLeave * call VimLeave()
" au VimEnter * call VimEnter()
let g:PathToSessions = $HOME . "/.vim/sessions"

function! VimEnter()
  if argc() == 0
    let LoadLastSession = confirm("Restore last session?", "&Yes\n&No")
    " if LoadLastSession == 1
    exe "source " . g:PathToSessions . "/LastSession.vim"
    " else
    "   call LoadSessions()
    " endif
  endif
endfunction

function! LoadSessions()
  let result = "List of sessions:"
  let sessionfiles = glob(g:PathToSessions . "/*.vim")
  while stridx(sessionfiles, "\n") >= 0
    let index = stridx(sessionfiles, "\n")

    let sessionfile = strpart(sessionfiles, 0, index)
    let result = result . "\n " . fnamemodify(sessionfile, ":t:r")
    let sessionfiles = strpart(sessionfiles, index + 1)
  endwhile
  let result = result . "\n " . fnamemodify(sessionfiles, ":t:r")
  let result = result . "\n" . "Please enter a session name to load (or empty to start normally):"
  let sessionname = input(result)
  if sessionname != ""
    exe "source " . g:PathToSessions . "/" . sessionname . ".vim"
  endif
endfunction


function! VimLeave()
  exe "mksession! " . g:PathToSessions . "/LastSession.vim"
  if exists("g:SessionFileName") == 1
    if g:SessionFileName != ""
      exe "mksession! " . g:SessionFileName
    endif
  endif
endfunction

" A command for setting the session name
com! -nargs=1 SetSession :let g:SessionFileName = g:PathToSessions . "/" . <args> . ".vim"
" .. and a command to unset it
com! -nargs=0 UnsetSession :let g:SessionFileName = ""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
