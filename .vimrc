call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-flagship'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-vinegar'

Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-wombat-scheme'
call plug#end()

" Pick a leader key
let mapleader = ","		

set ruler
set novisualbell
set hidden
set ttyfast
set number
map <leader>ln :set number!<CR>

" Whitespace
set wrap
set textwidth=80
set formatoptions=tcqrn1

" Cursor motion
set scrolloff=3
set matchpairs+=<:> " use % to jump between pairs

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>w :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
set background=dark
colorscheme wombat
let g:lightline = { 'colorscheme': 'wombat' }

" tabline design
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 10gt
nnoremap H gT
nnoremap L gt

function! MyTabline()
  let s = ''
  for i in range(tabpagenr('$'))
    let tab = i + 1
    let winnr = tabpagewinnr(tab)
    let buflist = tabpagebuflist(tab)
    let bufnr = buflist[winnr - 1]
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
  if (exists("g:tablineclosebutton"))
    let s .= '%=%999XX'
  endif
  return s
endfunction

set tabline=%!MyTabline()
