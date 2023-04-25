"g 设置 显示 no
set nu

" vundle {
set nocompatible

set  rtp+=~/.vim/bundle/Vundle.vim


" 设置插件
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'tomasr/molokai' " 主题配置

Plugin 'tpope/vim-surround' " change tags 

Plugin 'tpope/vim-fugitive' " 设置git 扩展


Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'posva/vim-vue'

call vundle#end()            " required

filetype plugin indent on 

"vim {{{
syntax on "系统高亮

set shell=bash

let mapleader=','

set shortmess=atI "close welcome page


set history=1000 " 设置历史记录

set noswapfile " 关闭 swapfile 

set encoding=utf-8
set incsearch
set hlsearch
set showmatch
set numberwidth=4
set showmode
set showcmd
set nobackup " 关闭备份文件


set cursorline " 高亮当前行
"}}}
"
" 设置主题
colorscheme molokai

set background=dark

set t_Co=256

 " code folding {{{
    set foldenable
    set foldmethod=indent           " manual,indent,expr,syntax,diff,marker
    set foldlevel=99

    let g:FoldMethod = 0
    map <leader>zz :call ToggleFold()<CR>
    fun! ToggleFold()
        if g:FoldMethod == 0
            exe "normal! zM"
            let g:FoldMethod = 1
        else
            exe "normal! zR"
            let g:FoldMethod = 0
        endif
    endfun

  " }}}

"设置主题结束
" 关闭鼠标

"set mouse-=a
"


"set cliphboard+=unnamed

" 设置行间距










"NeedTree {{{

let g:NERDTreeDirArrows=0

let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore=['node_modules']
let g:NERDTreeDirArrows = 0
let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeIgnore=['node_modules']
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd VimEnter * NERDTree | wincmd p


"}}}


" nerdtree-git-plugin symbols {{{
  let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ "Unknown"   : "?"
      \ }
" }}}
"
" vim-airline {{{
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_theme='dark'
  let g:airline_powerline_fonts=0
  let g:airline#extensions#tabline#exclude_preview = 1
  let g:airline#extensions#tabline#show_buffers = 1
  let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
  let g:airline#extensions#bufferline#enabled = 1
" }}}
"

" tagbar {{{
  map <D-y> :TagbarToggle<CR>

  let g:tagbar_autofocus=1
  let g:tagbar_sort=0
  let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
          \ 'p:package',
          \ 'i:imports:1',
          \ 'c:constants',
          \ 'v:variables',
          \ 't:types',
          \ 'n:interfaces',
          \ 'w:fields',
          \ 'e:embedded',
          \ 'm:methods',
          \ 'r:constructor',
          \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
          \ 't' : 'ctype',
          \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
          \ 'ctype' : 't',
          \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
  \ }

" }}}




" syntastic {{{
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  let g:syntastic_check_on_wq=1
  let g:syntastic_auto_jump=1
  let g:syntastic_auto_loc_list=1
  let g:syntastic_error_symbol = "▶▶"
  let g:syntastic_warning_symbol = "⚠"

  let g:syntastic_sh_checkers = ['shellcheck']
  "let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
  " passive
  let g:syntastic_mode_map = { "mode": "active",
      \ "active_filetypes": ["ruby", "go", "python"],
      \ "passive_filetypes": ["shell"] }

" }}}


  " switch tab {{{
    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
    noremap <leader>0 :tablast<CR>
  " }}}
  "
 "
   " relativenumber {{{
 "   set relativenumber
 "   augroup CursorLineOnlyInActiveWindow
 "       autocmd!
  "      autocmd InsertLeave * setlocal relativenumber
  "      autocmd InsertEnter * setlocal norelativenumber
 "       autocmd BufEnter * setlocal cursorline
"        autocmd BufLeave * setlocal nocursorline
        " autocmd CompleteDone *.go  call OnGolangCompleteDone()
 "   augroup END
 "   function! NumberToggle()
 "       if(&relativenumber == 1)
   "         set norelativenumber number
  "      else
 "           set relativenumber
  "      endif
 "   endfunc
 "   nnoremap <C-n> :call NumberToggle()<CR>
  " }}}

