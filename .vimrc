let mapleader = ","		" TODO: Pick a leader key

set number						" Show line numbers
set ruler							" Show file stats
set novisualbell			" no Blink cursor on error instead of beeping (grr)
set hidden						" Allow hidden buffers
set ttyfast						" Rendering

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
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
colorscheme default
