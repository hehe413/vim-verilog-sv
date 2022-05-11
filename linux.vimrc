"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automatic-verilog 变量配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:atv_snippet_author=$USER
let g:atv_snippet_author =$USER
let g:atv_snippet_company='NB'
let g:atv_snippet_project ='Logic'
let g:atv_snippet_device =''
let g:atv_snippet_email  =''
let g:atv_snippet_website=''

let g:atv_snippet_st_pos = 0        " 可配置生成代码段的前缀空格数

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 环境变量配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if(has('win32') || has('win64'))
    " 对ctrl-v等快捷键做了映射
    " source $VIMRUNTIME/mswin.vim
    " behave mswin
    set runtimepath+=$VIM/.vim
    set runtimepath+=$VIM/vimfiles/autoload/plug.vim
    "source $VIM/vimfiles/.vimrc
else
    "set runtimepath+=~/.vim/YouCompleteMe
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","             " 定义<leader>键
set nocompatible                " 设置不兼容原始vi模式
filetype on                     " 设置开启文件类型侦测
filetype plugin on              " 设置加载对应文件类型的插件
set noeb                        " 关闭错误的提示
syntax enable                   " 开启语法高亮功能
syntax on                       " 自动语法高亮
set t_Co=256                    " 开启256色支持
set cmdheight=2                 " 设置命令行的高度
set showcmd                     " select模式下显示选中的行数
set ruler                       " 总是显示光标位置
set laststatus=2                " 总是显示状态栏
set number                      " 开启行号显示
set cursorline                  " 高亮显示当前行
set whichwrap+=<,>,h,l          " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set mouse=a                     " 鼠标使能
"winpos 632 5                   " 设定窗口位置       
set lines=32 columns=128        " 设定窗口大小  
set noshowmode                  " 不显示左下角提示
set vb t_vb=                    " 关闭警告音
"set guioptions-=m              " 不显示菜单栏    
set guioptions-=T               " 不显示快捷图标
set background=dark             " 背景
let g:onedark_termcolors=256
colorscheme monokai             " 主题
set cuc cul                     " highlight current col and row
set shell=sh                    " 加快gvim,gvimdiff打开文件的速度

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                  " 设置自动缩进
set cindent                     " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0     " 设置C/C++语言的具体缩进方式
"set smartindent                " 智能的选择对其方式
filetype indent on              " 自适应不同语言的智能缩进
set expandtab                   " 将制表符扩展为空格
set tabstop=4                   " 设置编辑时制表符占用空格数
set shiftwidth=4                " 设置格式化时制表符占用空格数
set softtabstop=4               " 设置4个空格为制表符
set smarttab                    " 在行和段开始处使用制表符
set nowrap                      " 禁止折行
set backspace=2                 " 使用回车键正常处理indent,eol,start等

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                    " vim自身命名行模式智能补全
set completeopt-=preview        " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                    " 高亮显示搜索结果
set incsearch                   " 开启实时搜索功能
set ignorecase                  " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax           " 设置基于语法进行代码折叠
set nofoldenable                " 关闭折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if(has('win32') || has('win64'))
    set backupdir=$VIM/vimfiles/TempFiles/backupdir
    set directory=$VIM/vimfiles/TempFiles/swapdir
    set undodir=$VIM/vimfiles/TempFiles/undodir
else
    set backupdir=~/.vim/TempFiles/backupdir
    set directory=~/.vim/TempFiles/swapdir
    set undodir=~/.vim/TempFiles/undodir
endif

set backup                      " 设置备份
set swapfile                    " 允许生成临时文件
set undofile                    " 允许生成Undo文件
set autoread                    " 文件在vim之外修改过，自动重新读入
set autowrite                   " 设置自动保存
set confirm                     " 在处理未保存或只读文件的时候，弹出确认
set noautochdir            " 不自动切换当前工作目录，可能会导致gf无法跳转

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if(has('win32') || has('win64'))
    set guifont=DroidSansMono\ NF:h12
elseif(has('gui_macvim'))
    set guifont=DroidSansMono\ Nerd\ Font\ Mono:h18
else
    set guifont=DroidSansMono\ Nerd\ Font\ Mono\ 12
endif

"显示和内部处理的编码
set encoding=utf-8
"如果和上述的编码不匹配，则匹配下一个
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom,shift-jis
"终端显示编码方式
set termencoding=utf-8
"该选项是vim写入文件时采用的编码类型
set fileencoding=utf-8

"解决菜单乱码    
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if(has('win32') || has('win64'))
    let g:plug_home='$VIM/vimfiles/plugged'
else
    let g:plug_home='~/.vim/plugged'
endif

silent! call plug#begin()

Plug 'vim-scripts/L9'
Plug 'vim-scripts/txt.vim'
Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
"Plug 'junegunn/vim-slash'
Plug 'Shougo/echodoc.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/AutoComplPop'         " 自动补全窗口弹出
"Plug 'dense-analysis/ale'              " ALE-Asynchronous Lint Engine语法检查
Plug 'vim-syntastic/syntastic'          " syntastic语法检查
Plug 'HonkW93/automatic-verilog'        " SystemVerilog Tools
Plug 'WeiChungWu/vim-SystemVerilog'     " for sv syntax
Plug 'yuweijun/vim-im'                  " for chinese input

call plug#end()            

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配置&帮助 快捷键配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load vim default plugin
runtime macros/matchit.vim

" 编辑vimrc文件
nnoremap <leader>e :edit $MYVIMRC<CR>

" 查看help文件
if(has('win32') || has('win64'))
    nnoremap <leader>h :edit $VIM/help.md<CR>
else
    nnoremap <leader>h :edit ~/.vim/help.md<CR>
endif

" 重新加载vimrc文件
"nnoremap <leader>s :source $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" buffer切换快捷键
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-n> :bn<CR>
nnoremap <c-p> :bp<CR>
nnoremap <leader>d :bd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_section_error = 0             "(ycm_error_count, syntastic-err, eclim)
let g:airline_section_warning = 0           "(ycm_warning_count, syntastic-warn, whitespace)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  NERDTree 配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :exec("NERDTreeToggle ".expand('%:h'))<CR>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  ctags 位置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags+=tags
set tags+=~/tags/uvm_tags
set tags+=~/tags/sv_tags
set tags+=~/tags/v_tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
nnoremap <leader>t :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  incsearch.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled=1
nnoremap <leader><leader>il :IndentLinesToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  LeaderF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>f :LeaderfFile<CR>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  echodoc.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:echodoc_enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  tabular
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>l :Tab /\|<CR>
nnoremap <leader>= :Tab /=<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  vim-smooth-scroll
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件配置  ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>k :Ack!<space>  
" MUST install ack package 
" Ubuntu : sudo apt install ack-grep
" CentOS : sudo yum install ack

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SyntasticCheck
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 总是打开Location List（相当于QuickFix）窗口
" 如果你发现syntastic因为与其他插件冲突而经常崩溃，将下面选项置0
let g:syntastic_always_populate_loc_list = 1
" 不自动进行代码检查
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": [""],
        \ "passive_filetypes": [""] }
" 设置linter为iverilog
let g:syntastic_verilog_checkers = ['iverilog'] 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 成对标签跳转设置--按 % 跳转
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase=0
let b:match_words=
  \ '\<begin\>:\<end\>,' .
  \ '\<if\>:\<else\>,' .
  \ '\<module\>:\<endmodule\>,' .
  \ '\<class\>:\<endclass\>,' .
  \ '\<program\>:\<endprogram\>,' .
  \ '\<clocking\>:\<endclocking\>,' .
  \ '\<property\>:\<endproperty\>,' .
  \ '\<sequence\>:\<endsequence\>,' .
  \ '\<package\>:\<endpackage\>,' .
  \ '\<covergroup\>:\<endgroup\>,' .
  \ '\<primitive\>:\<endprimitive\>,' .
  \ '\<specify\>:\<endspecify\>,' .
  \ '\<generate\>:\<endgenerate\>,' .
  \ '\<interface\>:\<endinterface\>,' .
  \ '\<function\>:\<endfunction\>,' .
  \ '\<task\>:\<endtask\>,' .
  \ '\<for\>:\<endfor\>,' .
  \ '\<while\>:\<endwhile\>,' .
  \ '\<specify\>:\<endspecify\>,' .
  \ '\<generate\>:\<endgenerate\>,' .
  \ '\<case\>\|\<casex\>\|\<casez\>:\<endcase\>,' .
  \ '\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,' .
  \ '`ifdef\>:`else\>:`endif\>,'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RtlTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let t:RtlTreeVlogDefine = 0
nnoremap <leader>r :RtlTree<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set comment line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"映射F4快捷键
map  <F4> <Plug>Atv_Snippet_AutoComment;
imap <F4> <ESC><Plug>Atv_Snippet_AutoComment;<CR>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set comment block
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"映射F5快捷键
vmap <F5> <Plug>Atv_Snippet_AutoComment2;

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 生成时间
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"F8生成当前时间,格式为 2019-11-20 23:39:15(插入模式下)
imap <F8> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set file head
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd创建新文件自动调用setfilehead()函数
autocmd BufNewFile *.v,*.sv,*.cpp,*.c,*.h exec ":call Setfilehead()"
func Setfilehead()
    call append(0,  '// ********************************************************************************')
    call append(1,  '//')
    call append(2,  '// Copyright (c) 2022,xx Co.,Ltd.')
    call append(3,  '// All rights reserved')
    call append(4,  '//')
    call append(5,  '// Project Name : '.expand("LDxx"))
    call append(6,  '// Filename     : '.expand("%"))
    call append(7,  '// Author       : '.expand("$USER"))
    call append(8,  '// Email        : '.expand(""))
    call append(9,  '// Create       : '.strftime("%Y-%m-%d %H:%M:%S"))
    call append(10, '// Description  : ')
    call append(11, '// ')
    call append(12, '// -----------------------------------------------------------------------------')
    call append(13, '// Modification History: ')
    call append(14, '// Date         By              Version                 Change Description ')
    call append(15, '// -----------------------------------------------------------------------------')
    call append(16, '// ')
    call append(17, '// ********************************************************************************')
    call append(18, '')
endfunc

"映射F9快捷键，生成后跳转至第9行，然后使用o进入vim的插入模式
map <F9> :call Setfilehead()<CR>:12<CR>i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SyntasticCheck
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :call SyntasticCheckV()<CR>
func! SyntasticCheckV()
    exec "w"
    if &filetype == 'verilog' || &filetype == 'systemverilog'
        exec "SyntasticCheck"
    endif
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key map for Vimim_chinese
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F12> a<C-R>=g:Vimim_chinese()<CR>
inoremap <unique> <F12>  <C-R>=g:Vimim_chinese()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the following to have Vim jump to the last position when reopening a file
" 重新打开文件后，跳转到上次编辑的位置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

