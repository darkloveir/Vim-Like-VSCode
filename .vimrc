" Install vim plugin
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

" Disable compatibility with vi which can cause unexpected issues, Don't care about Vi compatibility
set nocompatible

" --------------------------------------------------------
" ---------- Plugins -------------------------------------
" --------------------------------------------------------
call plug#begin('~/.vim/plugged')
" A tree explorer plugin for vim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Extra syntax and highlight for nerdtree files
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeToggle' }
" A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
" A plugin of NERDTree for comment
Plug 'preservim/nerdcommenter'
" Vim plugin which formated javascript files by js-beautify
Plug 'maksimr/vim-jsbeautify'
" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
" Adds file type icons to Vim plugins
Plug 'ryanoasis/vim-devicons'
" Emoji/Unicode Icons Theme for Vim and Neovim with support for 40+ plugins and 380+ filetypes
Plug 'https://github.com/adelarsq/vim-devicons-emoji'
" Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'
" Molokai color scheme for Vim
Plug 'tomasr/molokai'
" Help you read complex code by showing diff level of parentheses in diff color
Plug 'kien/rainbow_parentheses.vim'
" Fuzzy file, buffer, mru, tag, etc finder
Plug 'ctrlpvim/ctrlp.vim'
" Vim plugin that displays tags in a window, ordered by scope
Plug 'majutsushi/tagbar', {'on':'TagbarToggle'}
" Preview colours in source code while editing
Plug 'ap/vim-css-color'
" Snippets & Syntax - Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" List of CoC extensions needed
let g:coc_global_extensions = ['coc-tsserver', 'coc-prettier', 'coc-snippets', 'coc-eslint', 'coc-tslint-plugin', 'coc-css', 'coc-html', 'coc-json', '@yaegassy/coc-volar', 'coc-solidity', 'coc-go', 'coc-python', 'coc-java', 'coc-kotlin', 'coc-sh', 'coc-markdownlint']
call plug#end()
" --------------------------------------------------------
" ---------- GUI-specific --------------------------------
" --------------------------------------------------------
" If GUI version of Vim is running set these options
if has("gui_running")
    au GUIEnter * simalt ~x " Automatically maximize window on startup
    set guioptions-=m " Hide menu bar
    set guioptions-=T " Hide tool bar
    set guioptions-=L " Hide left scroll bar
    set guioptions-=r " Hide right scroll bar
    set guioptions-=b " Hide bottom scroll bar
    "set showtabline=0 " Hide tab bar
endif
" --------------------------------------------------------
" ---------- rainbow setting -----------------------------
" --------------------------------------------------------
" rainbow - The colours used
let g:rbpt_colorpairs = [
            \ ['brown', 'RoyalBlue3'],
            \ ['Darkblue', 'SeaGreen3'],
            \ ['darkgray', 'DarkOrchid3'],
            \ ['darkgreen', 'firebrick3'],
            \ ['darkcyan', 'RoyalBlue3'],
            \ ['darkred', 'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown', 'firebrick3'],
            \ ['gray', 'RoyalBlue3'],
            \ ['black', 'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue', 'firebrick3'],
            \ ['darkgreen', 'RoyalBlue3'],
            \ ['darkcyan', 'SeaGreen3'],
            \ ['darkred', 'DarkOrchid3'],
            \ ['red', 'firebrick3'],
            \ ]

" rainbow - How deep to colour (repeating the colour list if necessary) before giving up; limited for performance reasons
let g:rbpt_max = 8
let g:rbpt_loadcmd_toggle = 0

" rainbow - Always On
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadChevrons
" --------------------------------------------------------
" ---------- General setting -----------------------------
" --------------------------------------------------------
" Enable file type detection
filetype on

" Enable plugins and load plugin for the detected file type
filetype plugin on

" Turn syntax highlighting on
syntax on

" 5 spaces when hitting on your keyboard
set sw=4

" 4 spaces when expanding a found in the file
set ts=4

" Expand tabs
set et

" Insert tabs on the start of a line according to
set smarttab

" Automatically inserts one extra level of indentation in some cases, and works for C-like files
set smartindent

" Line breaking
set lbr

" Formatoptions (or fo): controls whether or not automatic text wrapping is enabled
set fo+=mB

" Show matching brackets when typing
set sm

" The command to select as many characters as were selected before (assuming it's set selection=inclusive)
set selection=inclusive

" Make tab completion for files/buffers act like bash
set wildmenu

" Sets the model to use for the mouse
set mousemodel=popup

" iTerm2 supports 256 color mode
set t_Co=256

" True colors in the terminal
set termguicolors

" Regex engine
set re=1

" Don't update the display while executing macros
set lazyredraw

" Maximum column in which to search for syntax items
set synmaxcol=128

" Controls how Vim synchronizes the syntax state that should apply at a particular point in the text
syntax sync minlines=256

" Highlight the line under the cursor
set cul

" Enable cursor column
set cuc

" Set background theme
color molokai

" Show ruler
set ruler

" The entered command is displayed so you can see it more clearly
set showcmd

" Keep the cursor 3 lines apart when moving to the top and bottom of the buffer
set scrolloff=2

" Start display status line (1), always display status line (2)
set laststatus=2

" Allow folding
"set foldenable

" Manual folding
"set foldmethod=manual

" Highlight current line
set cursorline

" Set magic
set magic

" Automatic indentation
set autoindent
set cindent

" Tab key width
set tabstop=4

" Uniform indentation is 4
set softtabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Use tabs at the beginning of lines and paragraphs
set smarttab

" Show line number
set number

" Number of historical records
set history=1000

" Search character by character highlighting
set hlsearch
set incsearch

" Language settings
set encoding=utf-8
set termencoding=UTF-8
set fileencoding=utf-8
set fileencodings=utf-8

" Always show status line
set cmdheight=1

" Save global variables
set viminfo+=!

" Words with the following symbols should not be separated by newlines
set iskeyword+=$,@,%,#,-,_

" Font setting
set guifont=Monaco\ Bold\ 12

" Map leader to ,
let mapleader=','
" --------------------------------------------------------
" ---------- Airline setting -----------------------------
" --------------------------------------------------------
" Open airline smart tab
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" hijacking -- title
function! Tabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let buflist = tabpagebuflist(tab)
    let bufignore = ['nerdtree', 'tagbar', 'codi', 'help']
    for b in buflist
      let buftype = getbufvar(b, "&filetype")
      if index(bufignore, buftype)==-1 "index returns -1 if the item is not contained in the list
        let bufnr = b
        break
      elseif b==buflist[-1]
        let bufnr = b
      endif
    endfor
    let bufname = bufname(bufnr)
    let bufmodified = getbufvar(bufnr, "&mod")
    let s .= '%' . tab . 'T'
    let s .= (tab == tabpagenr() ? '%#TabLineSel#' : '%#TabLine#')
    let s .= ' ' . tab .':'
    let s .= (bufname != '' ? '['. fnamemodify(bufname, ':t') . '] ' : '[No Name] ')
    if bufmodified
      let s .= '[+] '
    endif
  endfor
  let s .= '%#TabLineFill#'
  return s
endfunction
set tabline=%!Tabline()
" --------------------------------------------------------
" ---------- Formatting setting --------------------------
" --------------------------------------------------------
" Code formatting ==> Ctrl+Shif+i in normal model / Ctrl+Alt+i in insert mode
" map <C-S-i> :call JsBeautify()<CR>
" map <C-A-i> <ESC>:call JsBeautify()<CR>

" or customize your filetype
" for js
" autocmd FileType javascript noremap <buffer> <C-S-i> :call JsBeautify()<CR>
" for html
" autocmd FileType html noremap <buffer> <C-S-i> :call HtmlBeautify()<CR>
" for json
" autocmd FileType json noremap <buffer> <C-S-i> :call JsonBeautify()<CR>
" for css or scss
" autocmd FileType css noremap <buffer> <C-S-i> :call CSSBeautify()<CR>
" for jsx
" autocmd FileType jsx noremap <buffer> <C-S-i> :call JsxBeautify()<CR>

" or use coc-prettier ==> Ctrl+Shif+i in normal model
" map <C-S-i> <NOP>
" map <C-S-i> <Plug>(coc-format-selected)<CR>

" or format files on save ==> I prefer this option
autocmd BufWritePre *.html CocCommand prettier.formatFile
autocmd BufWritePre *.scss CocCommand prettier.formatFile
autocmd BufWritePre *.json CocCommand prettier.formatFile
autocmd BufWritePre *.java CocCommand prettier.formatFile
autocmd BufWritePre *.css CocCommand prettier.formatFile
autocmd BufWritePre *.jsx CocCommand prettier.formatFile
autocmd BufWritePre *.tsx CocCommand prettier.formatFile
autocmd BufWritePre *.vue CocCommand prettier.formatFile
autocmd BufWritePre *.sol CocCommand prettier.formatFile
autocmd BufWritePre *.kts CocCommand prettier.formatFile
autocmd BufWritePre *.kt CocCommand prettier.formatFile
autocmd BufWritePre *.js CocCommand prettier.formatFile
autocmd BufWritePre *.ts CocCommand prettier.formatFile
autocmd BufWritePre *.go CocCommand prettier.formatFile
autocmd BufWritePre *.py CocCommand prettier.formatFile
autocmd BufWritePre *.md CocCommand prettier.formatFile
" --------------------------------------------------------
" ---------- Nerd setting --------------------------------
" --------------------------------------------------------
" Ignore direcory
let g:NERDTreeIgnore = ['^node_modules$', '\.git$', '\.idea$', '\.vscode$', '\.history$', '\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

" Automatically delete the buffer after deleting or renaming a file
if !exists("g:NERDTreeAutoDeleteBuffer")
  let g:NERDTreeAutoDeleteBuffer = 0
endif

" Automatically close when only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" List files in current directory ==> Ctrl+b show/hide TreeToggle
map <C-b> :NERDTreeToggle<CR>
imap <C-b> <ESC> :NERDTreeToggle<CR>

" Comment ==> Ctrl+/ comment/uncomment
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>
inoremap <C-_> <ESC>:call NERDComment(0,"toggle")<CR> i
" --------------------------------------------------------
" ---------- TagbarToggle setting ------------------------
" --------------------------------------------------------
" tagbar ==> F12 show/hide to browse the tags in normal model
nmap <F12> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" --------------------------------------------------------
" ---------- tab, buffer shortcut key configuration ------
" --------------------------------------------------------
" tab ==> Shift
map <S-H> :tabp<CR> 		  " previous tab
map <S-L> :tabn<CR> 		  " next tab
map <S-Left> :tabp<CR> 		" previous tab
map <S-Right> :tabn<CR> 	" next tab
map <S-W> :tabclose<CR> 	" close tab
" buffer ==> Ctrl
map <C-H> :bn<CR>         " next buffer
map <C-L> :bp<CR>         " previous buffer
map <C-Left> :bn<CR>      " next buffer
map <C-Right> :bp<CR>     " previous buffer
map <C-W> :bd<CR>         " close buffer
" --------------------------------------------------------
" ---------- Practical configuration ---------------------
" --------------------------------------------------------
" Set up automatic loading when files are modified
set autoread

" code completion
set completeopt=preview,menu

" Auto save
set autowrite

" Remove the prompt sound for input errors
"set noeb

" When processing unsaved or read-only files, a confirmation pop-up appears
set confirm

" Disable generation of temporary files
set noundofile
set nobackup
set noswapfile

" Search ignores case
set ignorecase
set linespace=0

" Command line autocomplete in enhanced mode
" Make the backspace key handle indent, eol, start, etc. normally
set backspace=2

" You can use the mouse anywhere in the buffer (similar to double-clicking the mouse in the workspace to position it in office)
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" Tell us which line of the file has been changed by using: commands command
set report=0

" Display white space between split windows for easier reading
set fillchars=vert:\ ,stl:\ ,stlnc:\

" Highlight matching brackets
set showmatch

" The time the matching brackets are highlighted (in tenths of a second)
set matchtime=1

" Keep the cursor 3 lines apart when moving to the top and bottom of the buffer
set scrolloff=3

" Turn on file type detection and add this sentence before you can use smart completion
set completeopt=longest,menu

" Only the file name is output, without directory prefixes such as ./ ../ (the default is to execute % in the current directory)
set autochdir

" cursor color
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175
" --------------------------------------------------------
" ---------- ctrlp ---------------------------------------
" --------------------------------------------------------
" Search in current directory ==> Ctrl+f in normal model
let g:ctrlp_map = '<C-f>'
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|tox|ico|git|hg|svn))$'
let g:ctrlp_working_path_mode = 1
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 1
" --------------------------------------------------------
" ---------- miscellaneous -------------------------------
" --------------------------------------------------------
let g:vue_pre_processors = ['pug', 'scss']

" Search in file content ==> Shift+f in normal model
nmap <S-f> :vimgrep<space>

" Link to OS clipboard
set clipboard=unnamed

" Copy/Paste/Cut - clipboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" Cut in virtual model , Copy in virtual model, Paste in normal model
" reset key
map <C-x> <NOP>
map <C-c> <NOP>
map <C-v> <NOP>
" set key
vmap <C-x> d
vmap <C-c> y
nmap <C-v> p

" Undo, Redo ==> Shif+z and zz is undo / Ctrl+y is redo
nnoremap <S-z> :undo<CR>
inoremap <S-z> <Esc>:undo<CR>
nnoremap zz :undo<CR>
inoremap zz <Esc>:undo<CR>
nnoremap <C-y> :redo<CR>
inoremap <C-y> <Esc>:redo<CR>

" Save in all modes ==> Ctrl+s
noremap  <C-s> :update<CR>
vnoremap <C-s> <Esc>:update<CR>
inoremap <C-s> <Esc>:update<CR>

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position
" Coc only does snippet and additional edit on confirm
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Exit ==> F4
nnoremap <F4> :qa<CR>

" vim-powered terminal in split window
map <F9> :tab term ++close<CR>
tmap <F9> <c-w>:tab term ++close<CR>

" Solidity work probably - test
au BufNewFile,BufRead *.sol setfiletype solidity
" --------------------------------------------------------