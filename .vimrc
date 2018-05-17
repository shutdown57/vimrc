:colorscheme molokai " Set colorScheme
:set number " Display line numbers on the left side
:set ls=2 " This makes Vim show a status line even when only one window is shown
:filetype plugin on " This line enables loading the plugin files for specific file types
:set tabstop=4 " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.
:set expandtab " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
:set softtabstop=4 " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
:set shiftwidth=4 " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation. 
:setlocal foldmethod=indent " Set folding method
:set t_Co=256 " makes Vim use 256 colors
:set nowrap " Don't Wrap lines!
:set clipboard=unnamed
:set clipboard=unnamedplus
:set autoindent " Automatic indentation
:set cindent " This turns on C style indentation
:set si " Smart indent
:set encoding=utf-8 " Use UTF-8 encoding
:syntax enable " syntax highlighting
:set showmatch " Show matching brackets
:set hlsearch " Highlight in search
:set ignorecase " Ignore case in search
:set noswapfile " Avoid swap files
:set mouse=a " Mouse Integration
:set autochdir " Make file

" auto complete for ( , " , ' , [ , { 
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>

" auto comment and uncooment with F6 and F7 key
" :autocmd FileType c,cpp,java,scala, php let b:comment_leader = '// '
" :autocmd FileType sh,ruby,python        let b:comment_leader = '# '
" :noremap <silent> #6 :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>     " commenting line with F6
" :noremap <silent> #7 :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>  " uncommenting line with F7

"for xfce4-terminal
" :noremap <silent> #5 :!xfce4-terminal --title "%" --hold -e "./%" <CR> <CR> " execute bash & python script with F5

"for mate-terminal
":noremap <silent> #5 :!mate-terminal --title "%" -e "./%" <CR> <CR>" execute bash & python script with F5

"for xterm terminal
":noremap <silent> #5 :!xterm -hold -e "./%" <CR> <CR>" execute bash & python script with F5

"for kde terminal(konsole)
":noremap <silent> #5 :!konsole --hold -e "./%" <CR> <CR>" execute bash & python script with F5

" Copy selected text to system clipboard (requires xclip installed):
:vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>xclip<CR><enter>


:noremap <silent> #3 :bp<CR> " switch to pervious tab with F3
:noremap <silent> #4 :bn<CR> " switch to next tab with F4
:map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
:set pastetoggle=<F2> " Paste mode toggle with F2 Pastemode disable auto-indent and bracket auto-compelation and it helps you to paste code fro elsewhere .

" ###########################################################

:set nocompatible
filetype off
:set rtp+=/home/sam/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on

augroup vimrc_autocmds
	autocmd!
	autocmd FileType python highlight Excess ctermbg=DarkGray guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='simple'

" DevIocn
Plugin 'ryanoasis/vim-devicons'
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let g:airline_powerline_fonts=1

" WorkSpace
Plugin 'bagrat/vim-workspace'
let g:workspace_powerline_separators = 1
let g:workspace_tab_icon = "\uf00a"
let g:workspace_left_trunc_icon = "\uf0a8"
let g:workspace_right_trunc_icon = "\uf0a9"
noremap <Tab> :WSNext<CR>
noremap <S-Tab> :WSPrev<CR>
noremap <Leader><Tab> :WSClose<CR>
noremap <Leader><S-Tab> :WSClose!<CR>
noremap <C-t> :WSTabNew<CR>

cabbrev bonly WSBufOnly

" JavaScript template highlight
Plugin 'Quramy/vim-js-pretty-template'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

let g:typescript_indent_disable = 1

" NerdCommenter
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Statify
Plugin 'mhinz/vim-startify'

" Power line
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set laststatus=2
" set t_Co=256
" set g:powerline_pycmd = "py3

" Fugitive setup
Bundle 'tpope/vim-fugitive'

" Tagbar
Bundle 'majutsushi/tagbar'
nmap <F5> :TagbarToggle<CR>

" NerdTree setup
Bundle 'scrooloose/nerdtree'
" map <F2> :NERDTreeToggle<CR>

" NERDTree plugin setting
:map <F9> :NERDTreeToggle<CR> " toggle showing NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
:autocmd StdinReadPre * let s:std_in=1
:autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only window left open is a NERDTree

" Python mode setup
Bundle 'klen/python-mode'
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator
" modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 0

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_python = 'python3'

" Don't autofold code
let g:pymode_folding = 0

" Jedi-vim setup
Bundle 'davidhalter/jedi-vim'

" vim-virtualenv
Bundle 'jmcantrell/vim-virtualenv'

" Other setttings

" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir
" more subtle popup colors
if has ('gui_running')
	highlight Pmenu guibg=#cccccc gui=bold
endif

" Syntax check plugin
Bundle 'scrooloose/syntastic'

" C language
Bundle 'c.vim'


" JavaScript language
Bundle 'pangloss/vim-javascript'

" HTML5 support in VIM
Bundle 'othree/html5.vim'

" JSON support
Bundle 'elzr/vim-json'

" CSS3 support
Bundle 'hail2u/vim-css3-syntax'

" RUST support
Bundle 'rust-lang/rust.vim'

" Support a lot of languages in VIM
" Bundle 'sheerun/vim-polyglot'

" NODE.js support
Bundle 'moll/vim-node'

" PHP support
Bundle 'stanangeloff/php.vim'

" JQUERY support
Bundle 'nono/jquery.vim'

" ANGULAR support
Bundle 'burnettk/vim-angular'

" INI files syntax support
Bundle 'nvie/vim-ini'

" JINJA template language support
Bundle 'hiphish/jinja.vim'

" HashiCorp plugins:
" vim-consul
" vim-nomadproject
" vim-ottoproject
" vim-packer
" vim-terraform
" vim-vagrant
" vim-vaultproject
Bundle 'hashivim/vim-hashicorp-tools'

" Typescript
Bundle 'leafgarland/typescript-vim'

" NumberToggle
Bundle 'jeffkreeftmeijer/vim-numbertoggle'

" Project manager
Bundle 'amiorin/vim-project'
