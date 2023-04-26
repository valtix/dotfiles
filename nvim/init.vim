""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" General Settings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" to show line numbers
set number

" enable theming support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable

"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""""""""" Integrated Terminal
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" open new split panes to right and below
set splitright
set splitbelow

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal with ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
""""""""" Switching between panels 
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" Plugin Manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.vim/plugged")

  " Plugin Section

  " Color Schemes
  Plug 'dracula/vim', { 'as': 'dracula' } 	" https://draculatheme.com/vim


  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Requires node.js installation:
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" Config Section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

				" dracula/vim
colorscheme dracula

				" scrooloose/nerdtree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

    				" junegun
	" To search for a file, press Ctrl+P  
	" search for the file you’re looking for, and press:
	" 	1. CTRL+T to open it in a new tab.
	" 	2. CTRL+S to open below (split view)
	" 	3. CTRL+T to open to the side (vertical split)
	" 	4.Enter to open it in the currently selected panel
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" ignores node_modules and uses silver searcher instead (https://github.com/ggreer/the_silver_searcher)
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
