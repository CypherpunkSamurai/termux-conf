" ===================
"
"     Neovim Config
"
" ====================

set nu

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab



" + ======= +
"
" | Plugins |
"
" + ======= +


" +----------------------+

call plug#begin('~/.vim/plugged')







" + Code Easy
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/syntastic'
"Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
"ActivateAddons vim-snippets snipmate "use snipmate engine
Plug 'nathanaelkane/vim-indent-guides'
"IndentGuidesEnable or IndentGuidesToggle | IndentGuidesDisable
let g:indent_guides_enable_on_vim_startup = 1
Plug 'myusuf3/numbers.vim'
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>


" + Finding
"Plug 'junegunn/fzf'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Find Files Quickly and open



" + Comments
Plug 'tpope/vim-commentary'
" Usage:
" Use `gcc n` to comment out a line(s)
" Use `gc` to comment out the target of a motion
" Use `gcap` to comment out a paragraph
" Use `gc` in visual mode to comment out the selection



" + NerdTree
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
noremap <C-t> :NERDTreeTabsToggle<CR>
Plug 'xuyuanp/nerdtree-git-plugin'



" + Git
Plug 'tpope/vim-fugitive'



" + Lesser Autocompletions
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'


" + Undo
Plug 'mbbill/undotree'
nnoremap <C-S-u> :UndotreeToggle<CR>


" + Linter (Code Checker)
"Plug 'w0rp/ale'
" Usage:
" type `ALEFix`



" + Syntax Highlighting
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_style_pythonic = 1
Plug 'elzr/vim-json'
Plug 'zah/nim.vim'



" + Color highlight
Plug 'chrisbra/Colorizer'


" + Whitespace
Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled=1
"highlight ExtraWhitespace ctermbg=<desired_color>
"let g:better_whitespace_ctermcolor='<desired_color>'
"
"enable highlight and strip whitespace on save
"let g:strip_whitespace_on_save=1






" + Automcomplete

Plug 'prabirshrestha/asyncomplete.vim'
let g:asyncomplete_auto_popup = 1

" Plug 'prabirshrestha/asyncomplete-buffer.vim'





" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'


" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'allowlist': ['python'],
"         \ })
" endif



" buffer complete

Plug 'prabirshrestha/asyncomplete-buffer.vim'



" nim lsp

" let s:nimlspexecutable = "nimlsp"
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('/tmp/vim-lsp.log')
" " for asyncomplete.vim log
" let g:asyncomplete_log_file = expand('/tmp/asyncomplete.log')

" let g:asyncomplete_auto_popup = 0

" if has('win32')
"    let s:nimlspexecutable = "nimlsp.cmd"
"    " Windows has no /tmp directory, but has $TEMP environment variable
"    let g:lsp_log_file = expand('$TEMP/vim-lsp.log')
"    let g:asyncomplete_log_file = expand('$TEMP/asyncomplete.log')
" endif
" if executable(s:nimlspexecutable)
"    au User lsp_setup call lsp#register_server({
"    \ 'name': 'nimlsp',
"    \ 'cmd': {server_info->[s:nimlspexecutable]},
"    \ 'whitelist': ['nim'],
"    \ })
" endif

" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ asyncomplete#force_refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"













" +----------------------+







" + ========= +
"
" |  Theming  |
"
" + ========= +

" +----------------------+


" + Colorschemes
Plug 'roosta/srcery'
Plug 'flazz/vim-colorschemes'
"Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'
Plug 'henrynewcomer/vim-theme-papaya'
"Plug 'tomasr/molokai'
Plug 'wolf-dog/nighted.vim'
Plug 'ghifarit53/tokyonight-vim'
" Plug 'vim-scripts/chlordane.vim'



" + UI
Plug 'mhinz/vim-startify'
Plug 'roman/golden-ratio'
Plug 'itchyny/lightline.vim'
set noshowmode " disable -- INSERT -- below lightline
Plug 'hallzy/lightline-onedark'

" + Icons
Plug 'ryanoasis/vim-devicons'


" + Switching
Plug 'vim-scripts/ScrollColors'
noremap <C-0> :NEXTCOLOR<CR>
noremap <C-1> :PREVCOLOR<CR>





" +----------------------+





"Plug 'urbainvaes/vim-remembrall'

" Show ',' normal mode mappings when ',' is pressed.
"nnoremap <silent> <expr> , Remembrall(',')

" Show ',' normal mode mappings when the key combination ',?' is pressed,
" so we don't have to wait for the timeout.
"nnoremap <silent> <expr> ,? Remembrall(',')

" Show visual mode mappings.
"vnoremap <silent> <expr> ? Remembrall('v', '')
















call plug#end()






if (has("termguicolors"))
  set termguicolors
endif

colorscheme papaya
"let g:papaya_gui_color='blue'


let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" wombat, seoul256, one dark



" Buffer Complete
let g:asyncomplete_buffer_clear_cache = 1
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
\ 'name': 'buffer',
\ 'allowlist': ['*'],
\ 'blocklist': ['go'],
\ 'completor': function('asyncomplete#sources#buffer#completor'),
\ 'config': {
\    'max_buffer_size': 5000000,
\  },
\ }))



