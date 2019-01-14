" :colorscheme molokai " Set colorScheme
:set number " Display line numbers on the left side
:set ls=2 " This makes Vim show a status line even when only one window is shown
:filetype plugin on " This line enables loading the plugin files for specific file types
:set tabstop=4 " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.
:set expandtab " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.
:set softtabstop=4 " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set, vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
:set shiftwidth=4 smarttab " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation. 
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
:set wrap " Soft wrap lines

" :set keymap=persian
" :set encoding=utf-8 ًٍٍّّٓ
" :set rightleft

" auto complete for ( , " , ' , [ , { 
:inoremap        (  ()<Left>
:inoremap        "  ""<Left>
:inoremap        `  ``<Left>
:inoremap        '  ''<Left>
:inoremap        [  []<Left>
:inoremap      {  {}<Left>

"for xfce4-terminal
" :noremap <silent> #5 :!xfce4-terminal --title "%" --hold -e "./%" <CR> <CR> " execute bash & python script with F5

"for mate-terminal
":noremap <silent> #5 :!mate-terminal --title "%" -e "./%" <CR> <CR>" execute bash & python script with F5

"for xterm terminal
":noremap <silent> #5 :!xterm -hold -e "./%" <CR> <CR>" execute bash & python script with F5

"for kde terminal(konsole)
":noremap <silent> #5 :!konsole --hold -e "./%" <CR> <CR>" execute bash & python script with F5

" Copy selected text to system clipboard (requires xclip installed):
:vnoremap <C-c> "cy<esc>:!echo -n '<C-R>c' \|<space>pbcopy<CR><enter>

:let mapleader="\<space>"
:set ttyfast
:noremap <silent> #3 :bp<CR> " switch to pervious tab with F3
:noremap <silent> #4 :bn<CR> " switch to next tab with F4
:map <F8> :setlocal spell! spelllang=en_us<CR> " check spelling with F8
:set pastetoggle=<F2> " Paste mode toggle with F2 Pastemode disable auto-indent and bracket auto-compelation and it helps you to paste code fro elsewhere .

" ###########################################################

:set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" colorscheme
Plugin 'dracula/vim'
:color dracula

" Emmet
Plugin 'mattn/emmet-vim'

" Dart
Plugin 'dart-lang/dart-vim-plugin'

" Statify
Plugin 'mhinz/vim-startify'

" Whitespace highlighting
Plugin 'ntpeters/vim-better-whitespace'

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" ALE
Plugin 'w0rp/ale'

" Project manager
" Plugin 'amiorin/vim-project'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" DevIocn
Plugin 'ryanoasis/vim-devicons'

" WorkSpace
Plugin 'bagrat/vim-workspace'

" JavaScript template highlight
" Plugin 'Quramy/vim-js-pretty-template'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" NerdCommenter
Plugin 'scrooloose/nerdcommenter'

" Taglist
" Plugin 'taglist.vim'

" Fugitive setup
Plugin 'tpope/vim-fugitive'

" Tagbar
Plugin 'majutsushi/tagbar'

" NerdTree setup
Bundle 'scrooloose/nerdtree'

" Python mode setup
Plugin 'klen/python-mode'

" Jedi-vim setup
Plugin 'davidhalter/jedi-vim'

" vim-virtualenv
Plugin 'jmcantrell/vim-virtualenv'

" Syntax check plugin
Plugin 'scrooloose/syntastic'

" C language
Plugin 'c.vim'

" JavaScript language
Plugin 'pangloss/vim-javascript'

" Gitgutter
Plugin 'airblade/vim-gitgutter'

" HTML5 support in VIM
Plugin 'othree/html5.vim'

" JSON support
Plugin 'elzr/vim-json'

" CSS3 support
Plugin 'hail2u/vim-css3-syntax'

" RUST support
Plugin 'rust-lang/rust.vim'

" Support a lot of languages in VIM
" Plugin 'sheerun/vim-polyglot'

" NODE.js support
Plugin 'moll/vim-node'

" PHP support
Plugin 'stanangeloff/php.vim'

" JQUERY support
Plugin 'nono/jquery.vim'

" ANGULAR support
Plugin 'burnettk/vim-angular'

" INI files syntax support
Plugin 'nvie/vim-ini'

" JINJA template language support
Plugin 'hiphish/jinja.vim'

" HashiCorp plugins:
" vim-consul
" vim-nomadproject
" vim-ottoproject
" vim-packer
" vim-terraform
" vim-vagrant
" vim-vaultproject
Plugin 'hashivim/vim-hashicorp-tools'

" Typescript
Plugin 'Quramy/tsuquyomi'

" NumberToggle
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Vue
" Plugin 'posva/vim-vue'

" Haxe
Plugin 'jdonaldson/vaxe'

" Php completion
" Plugin 'shawncplus/phpcomplete.vim'

" Soround
Plugin 'tpope/vim-surround'

" Repeat
Plugin 'tpope/vim-repeat'

" CTRLp
Plugin 'ctrlpvim/ctrlp.vim'

" polyglot
Plugin 'sheerun/vim-polyglot'

Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'

" PHP auto completion
" Plugin 'm2mdas/phpcomplete-extended'

call vundle#end()            " required
filetype plugin indent on    " required

" ###############################__OPTIONS__###############################

augroup vimec_autocmds
	autocmd!
	autocmd FileType python highlight Excess ctermbg=DarkGray guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

" gitgutter options
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 0
:map <F6> :GitGutterLineHighlightsToggle<CR> " Toggle gitgutter highlight

" Dart options
let dart_format_on_save = 1
let dart_style_guide = 2
let dart_html_in_string=v:true

" Startify options
let g:startify_bookmarks = [
    \ '~/.vimrc',
    \ '~/.zshrc',
    \ '~/.tmux.conf',
    \ '~/.tmux-powerlinerc',
    \ '~/.tmux/plugins/tmux-powerline/themes/default.sh',
    \ '~/.config/bspwm/bspwmrc',
    \ '~/.config/sxhkd/sxhkdrc',
    \ '~/.config/polybar/config',
    \ '~/.config/plasma-workspace/env/set_window_manager.sh',
    \ '~/Workspace/PHP/lara-shop/',
    \ '~/Workspace/Python/Current/Dev/',
    \ '~/Workspace/Python/own/new_up/',
    \ '~/Workspace/Python/VoTask/',
    \ '~/Workspace/Python/BuySys/'
    \ ]
let NERDTreeHijackNetrw = 1
" autocmd VimEnter *
    " \   if !argc()
    " \ |   Startify
    " \ |   NERDTree
    " \ |   wincmd w
    " \ | endif
let g:startify_fortune_use_unicode = 1

" vim-project options
" let g:project_enable_welcome = 0
" let g:project_use_nerdtree=1
" set rtp+=/home/sam/.vim/bundle/vim-project/
" call project#rc("/home/sam/Workspace")
"
" File    '~/.vimrc'                                         , 'vimrc'
" File    '~/.zshrc'                                         , 'zshrc'
" File    '~/.tmux.conf'                                     , 'tmux-config'
" File    '~/.tmux/plugins/tmux-powerline/themes/default.sh' , 'tmux-theme'
"
" Project 'PHP/lara-shop'                                    , 'Lara-shop'
" Project 'python/current/dev'                               , 'Dev'
" Project 'Python/Current/Dev/src/static'                    , 'Dev-frontend'
" Project 'PHP/wordpress/source/wp-content/themes/vue-new'   , 'Vue-new'
" Project 'Python/own/new_up'                                , 'Up'
" Project 'Python/VoTask'                                    , 'VoTask'
" Project 'Python/BuySys'                                    , 'BuySys'
" Project 'JavaScript/BrenjMarket'                           , 'BrenjMarket'

" EasyMotion options
let g:EasyMotion_smartcase = 1

" ALE options
let g:ale_completion_enabled = 1

" Airline options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='simple'
" Always show statusline
set laststatus=2

" DevIocn options
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:airline_powerline_fonts = 1
let g:WebDevIconsOS = 'Linux'
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" vim-workspace options
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

" vim-typescript options
let g:typescript_indent_disable = 1

" Python paths for ncm2
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

:python3 import neovim

if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
endif

let g:deoplete#enable_at_startup = 1

" Completion Framework
Plugin 'ncm2/ncm2'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-tmux'
Plugin 'ncm2/ncm2-path'
" Plugin 'jsfaint/gen_tags.vim'
" Plugin 'ncm2/ncm2-neoinclude'
" Plugin 'ncm2/ncm2-tagprefix'
" Plugin 'filipekiss/ncm2-look.vim'
" Plugin 'wellle/tmux-complete.vim'
" Plugin 'yuki-ycino/ncm2-dictionary'
" suppress the annoying 'match x of y', 'The only match' and 'Pattern not
" found' messages
set shortmess+=c
" When the <Enter> key is pressed while the popup menu is visible, it only
" hides the menu. Use this mapping to close the menu and also start a new
" line.
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" wrap existing omnifunc
" Note that omnifunc does not run in background and may probably block the
" editor. If you don't want to be blocked by omnifunc too often, you could
" add 180ms delay before the omni wrapper:
"  'on_complete': ['ncm2#on_complete#delay', 180,
"               \ 'ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
au User Ncm2Plugin call ncm2#register_source({
        \ 'name' : 'css',
        \ 'priority': 9, 
        \ 'subscope_enable': 1,
        \ 'scope': ['css','scss'],
        \ 'mark': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'complete_pattern': ':\s*',
        \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
        \ })
Plugin 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plugin 'phpactor/ncm2-phpactor'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plugin 'mhartington/nvim-typescript'
Plugin 'jsfaint/gen_tags.vim'
Plugin 'SirVer/ultisnips'
" Plugin 'ncm2/ncm2-syntax'
Plugin 'ncm2/ncm2-ultisnips'
Plugin 'ncm2/ncm2-html-subscope'
Plugin 'ncm2/ncm2-markdown-subscope'
Plugin 'ncm2/ncm2-match-highlight'

" NerdCommenter options
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

" tagbar options
nmap <F5> :TagbarToggle<CR>

" taglist options
" let Tlist_Ctags_Cmd='/usr/bin/ctags'
" let Tlist_Process_File_Always=1
" let Tlist_WinWidth=50
" let Tlist_Auto_Update=1
" let Tlist_Exit_OnlyWindow=1
" let Tlist_GainFocus_On_ToggleOpen=1
" let Tlist_Use_Right_Window=1
" nmap <F5> :TlistToggle<CR>

" nerdtree options"
:map <F9> :NERDTreeToggle<CR> " toggle showing NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
" :autocmd StdinReadPre * let s:std_in=1
" :autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
:autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if the only window left open is a NERDTree

" Python-mode options
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

" Other setttings
" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" automatically change window's cwd to file's dir
set autochdir
" more subtle popup colors
if has ('gui_running')
	highlight Pmenu guibg=#cccccc gui=bold
endif

" Vue options
" :set ft=vue
" nmap <F4> :set ft=vue <CR>
" :syntax sync fromstart
" autocmd FileType vue syntax sync fromstart

" Ctags auto append to tags file
autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

set tags=tags;/

" FZF enable
:set rtp+=/usr/bin/fzf

" CTRLp options
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }
nnoremap <leader>p :CtrlP<cr>
let g:ctrlp_extensions = ['tag', 'line']
function! s:setcwd()
    let cph = expand('%:p:h', 1)
    if cph =~ '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
        let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
        if wd != '' | let &acd = 0 | brea | en
    endfo
    exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction
autocmd BufEnter * call s:setcwd()
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_buftag_ctags_bin = '/usr/bin/ctags'

" php-completion options
" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

