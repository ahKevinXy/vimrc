" 设置 显示 no
set nu

" vundle {
set nocompatible

set  rtp+=~/.vim/bundle/Vundle.vim


" 设置插件
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tomasr/molokai'


call vundle#end()            " required

filetype plugin indent on 


syntax on "系统高亮

set shell=bash

let mapleader=','

set shortmess=atI "close welcome page


set history=1000 " 设置历史记录

set noswapfile " 关闭 swapfile 

set nobackup " 关闭备份文件


set cursorline " 高亮当前行


colorscheme molokai
