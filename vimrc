"
" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.


au FocusLost * silent :wa                " Autosave!
au BufLeave * silent :wa               " Autosave!
set autowriteall                  " autowrite the buffers  
" set bufhidden=delete              " delete the buffer when he become hidden
" au BufNewFile,BufRead * set nobuflisted  " do not put buffers into a list , I HATE BUFFERS

"atlas to filetypes
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.json set filetype=javascript

silent! call pathogen#runtime_append_all_bundles()
set nocompatible                  " Must come first because it changes other options.
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
set shortmess=atAI                 " shortens messages to avoid 'press a key' prompt
set report=0                      " tell us when any line is changed via :
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set nowrap                        " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
set autoread                      " update the file when he was changed outside vi 

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

" PEEPOPEN
if has("gui_macvim")
  set mmta                        " Mac uses the option as metakey
  map <leader>f <Plug>PeepOpen
else
  map <Leader>f :FufFile **/<CR>
endif

map <leader>n :NERDTreeToggle<cr>
map <leader>. gg=G

nmap <silent> <leader>m :set hlsearch! hlsearch?<CR>
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

" quick move
map <m-k> 5k
map <m-j> 5j
map <m-l> 5l
map <m-h> 5h

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
" Useful abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>
