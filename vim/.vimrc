
" Install plugin runtimes
set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()

syntax on
if has("gui_running")
  set hlsearch
  colorscheme macvim
  set bs=2
  set ai
  set ruler
endif

" Syntax 
filetype plugin indent on

set nu
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set showmatch
set expandtab

"Bold Search Results"
:highlight clear Search
:highlight Search cterm=bold
:set hls

highlight WhiteSpaces ctermbg=green guibg=#55aa55
match WhiteSpaces /\s\+$/
set list


"Curly braces indentation
inoremap {<cr> {<cr>}<c-o>O
"" Highlight on overlenght
if exists('+colorcolumn')
  set colorcolumn=70
  highlight link OverLength ColorColumn
  exec 'match OverLength /\%'.&cc.'v.\+/'
endif

" Give a shortcut key to plugins
map <F10> :NERDTreeToggle<CR>
map <F2>  :MRU<CR>
map <F9>  :TagbarToggle<CR>

" Plugin Configurations
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
set listchars=tab:→\ ,trail:·,nbsp:·

au BufNewFile,BufRead *.yang set filetype=yang
au! Syntax yang source ~/.vim/bundle/yang.vim
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=36                          " Default is 40, seems too wide
  let g:tagbar_type_yang = {
      \ 'ctagstype': 'yang',
      \ 'kinds' : [
          \'m:Modules',
          \'i:Imports',
          \'x:Includes',
          \'f:Features',
          \'y:Identities',
          \'t:Types',
          \'g:Groupings',
          \'n:Notifications',
          \'r:RPCs'
      \]
    \}
