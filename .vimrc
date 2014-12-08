execute pathogen#infect()

set autoindent
set tabstop=8
set shiftwidth=8
set backspace=2
set laststatus=2
set showmatch
set ruler
set hlsearch
set incsearch
set mousehide
set nocp
set novb
set backup
set backupdir=~/.vimbackup
set wildmenu
set comments=sr:/*,mb:*,el:*/,://,b:#,:%L%,:%l%,:%,:XCOMM,n:>,fb:-,:CVS
set textwidth=78
set formatoptions=roq
set background=dark
set nu
set tags=~/.vim/tags
set t_Co=256
set regexpengine=0

autocmd BufRead,BufNewFile *.php setlocal omnifunc=phpcomplete#CompletePHP

let g:solarized_termcolors=256

let g:easytags_file = '~/.vim/tags'
let g:easytags_async = 1
let g:easytags_opts = '-R --fields=+aimS --languages=php'

let g:tagcommands = { "php" : {"tagfile":"~/.vim/tags","args":"-R"} }
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']

let g:phpcomplete_enhance_jump_to_definition = 0

let g:phpcomplete_parse_docblock_comments = 0
let g:SuperTabClosePreviewOnPopupClose = 1

if !filereadable(".hhconfig")
	let g:hack#enable = 0
else
	autocmd BufRead,BufNewFile *.hh setlocal omnifunc=hackcomplete#Complete
endif

syntax on
filetype indent plugin on
filetype plugin on

colorscheme solarized

autocmd BufRead,BufNewFile *.php nnoremap <Tab> :call pdv#DocumentWithSnip()<CR>
