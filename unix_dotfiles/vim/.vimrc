"let b:did_ftplugin = 1
"set term=xterm-256color

" Use color syntax highlighting.
syntax on

" Color specifications. Change them as you would like.
"colorscheme gentooish
"colorscheme vividchalk
"colorscheme molokai
"colorscheme wombat
"colorscheme railscasts
"colorscheme distinguished
"colorscheme jellybeans
"colorscheme noctu

if &t_Co > 128
	colorscheme jellybeans
else
	colorscheme vividchalk
endif

" vim-plug addons 
call plug#begin('~/.vim/plugged') 
" Dockerfile plugin 
Plug 'ekalinin/Dockerfile.vim'
" git wrapper, gv dependency
Plug 'tpope/vim-fugitive'
" git commit browser 
Plug 'junegunn/gv.vim'
" vim-airline status bar  
Plug 'vim-airline/vim-airline'
" Syntax highlighting
Plug 'vim-syntastic/syntastic'
" Ployglot
Plug 'sheerun/vim-polyglot'
" Swift highlighting
Plug 'keith/swift.vim'
" Add plugins to &runtimepath
call plug#end()

" Syntastic Options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic mdl to  markdownlint-cli
let g:syntastic_markdown_mdl_exec = 'markdownlint'
let g:syntastic_markdown_mdl_args = ''
" Syntastic swift linter
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Options
set ls=2
set nu
set autoindent
let g:airline_powerline_fonts = 1
set backspace=2		" Allows insert-mode backspace to work as one expects
set cindent
set cinkeys=0{,0},:,!^F,o,O,e	" See "cinkeys"; this stops "#" from indenting
set fileformat=unix	" No crazy CR/LF
"set listchars=tab:\ \ ,trail:· " If you do ":set list", shows trailing spaces
set hlsearch		" Don't highlight search terms
set nojoinspaces	" One space after a "." rather than 2
set ruler		" Show the line position at the bottom of the window
set scrolloff=1		" Minimum lines between cursor and window edge
set shiftwidth=4	" Indent by 4 columns (for C functions, etc).
set showcmd		" Show partially typed commands
set showmatch		" Show parentheses matching
set smartindent		" Indent settings (really only the cindent matters)
"set textwidth=80	" Maximum line width
set viminfo='0,\"100,	" Stay at the start of a file when opening it
set whichwrap=<,>,[,],h,l " Allows for left/right keys to wrap across lines
set writebackup		" Write temporary backup files in case we crash

if version >= 600

" Jenkinsfile mapping to groovy
au BufNewFile,BufRead Jenkinsfile setf groovy

" Vim 6 options

"  colo cduan
  set formatoptions=tcroql

  " Increase the highlighting accuracy
  syn sync fromstart

else

  set fo=tcroql
"  source ~/.vim/colors/cduan.vim
"  source ~/.vim/plugin/matchit.vim
  syn sync minlines=1000

end

"set guifont=-Schumacher-Clean-Medium-R-Normal--16-160-75-75-C-80-ISO646.1991-IRV


"Set syntax

"GLSL
command SetGLSLFileType call SetGLSLFileType()
function SetGLSLFileType()
  for item in getline(1,10)
    if item =~ "#version 400"
      execute ':set filetype=glsl400'
      break
    endif
    if item =~ "#version 330"
      execute ':set filetype=glsl330'
      break
    endif
  endfor
endfunction
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl SetGLSLFileType

"CG
au BufNewFile,BufRead *.cg execute ':set filetype=cg'
