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



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" Plugin Manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin("~/.vim/plugged")

  " Plugin Section

  " Color Schemes
  Plug 'dracula/vim', { 'as': 'dracula' } 	" https://draculatheme.com/vim


  Plug 'ryanoasis/vim-devicons'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  
  " Requires node.js installation:
  Plug 'neoclide/coc.nvim', {'branch': 'release'} 
  let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'mattn/emmet-vim'
   
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'nvim-tree/nvim-tree.lua'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" VIM PLUG Config Section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

				" dracula/vim
colorscheme dracula


    				" junegun/fzf

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


				" mattn/emmet-Vim 

" redefine trigger Key
let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<title></title>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""" LUA MODULES 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

lua require('plugins.nvim-lualine')
lua require('plugins.coc-vim')
lua require('plugins.nvim-tree')
lua require('keymaps')
