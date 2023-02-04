" Options
set nocompatible
filetype off
set encoding=UTF-8
set completeopt=noinsert,menuone,noselect
set cursorline
set clipboard+=unnamedplus
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on


set t_Co=256


" True color if available
let term_program=$TERM_PROGRAM

" Check for conflicts with Apple Terminal app
if term_program !=? 'Apple_Terminal'
    set termguicolors
else
    if $TERM !=? 'xterm-256color'
        set termguicolors
    endif
endif


" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"


call plug#begin()
" Appearance
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'elvessousa/sobrio'
" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }
"For rust
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'cespare/vim-toml'
"one dare theme
Plug 'navarasu/onedark.nvim'
" Completion / linters / formatters
Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
Plug 'plasticboy/vim-markdown'
"Comments
Plug 'tpope/vim-commentary'
"Styled Components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Git
Plug 'airblade/vim-gitgutter'
call plug#end()

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ Check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! Check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" File browser
let NERDTreeShowHidden=1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" Language server stuff
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

" Tabs
nnoremap <S-Tab> gT
nnoremap <Tab> gt
nnoremap <silent> <S-t> :tabnew<CR>
" Auto Commands
augroup auto_commands
    autocmd BufWrite *.py call CocAction('format')
    autocmd FileType scss setlocal iskeyword+=@-@
augroup END


let g:onedark_config = {
            \ 'style': 'deep',
            \ 'toggle_style_key': '<leader>ts',
            \ 'ending_tildes': v:true,
            \ 'diagnostics': {
            \ 'darker': v:false,
            \ 'background': v:false,
            \ },
            \ }

colorscheme sobrio 
"colorscheme pywal

"For rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

