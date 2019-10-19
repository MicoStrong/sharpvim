" Author: 訾强 <787280310@qq.com>
" Repository: https://github.com/MicoStrong/sharpvim
" Create Date: 2019-10-18
" License: GNU General Public License v3.0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","                         " 定义<leader>键
set nocompatible                            " 设置不兼容原始vi模式
filetype on                                 " 设置开启文件类型侦测
filetype plugin on                          " 设置加载对应文件类型的插件
set noeb                                    " 设置关闭错误提示
syntax enable                               " 设置开启语法高亮功能
syntax on                                   " 设置自动语法高亮
set t_Co=256                                " 设置开启256色支持
set cmdheight=2                             " 设置命令行高度
set showcmd                                 " 设置select模式下显示选中的行数
set ruler                                   " 设置总是显示光标的位置
set laststatus=2                            " 设置总是显示状态栏
set number                                  " 设置开启行号显示
"set cursorline                             " 设置高亮显示当前行
set whichwrap+=<,>,h,l                      " 设置光标键跨行
set ttimeoutlen=0                           " 设置<ESC>键响应时间
set virtualedit=block,onemore               " 设置允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进与排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent                              " 设置自动缩进
set cindent                                 " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0                 " 设置使用C/C++语言的具体缩进方式
set smartindent                             " 设置智能选择对齐方式
filetype indent on                          " 设置自适应不同语言的智能缩进
set expandtab                               " 设置将制表符扩展为空格
set tabstop=4                               " 设置设置编辑时制表符所占的空格数
set shiftwidth=4                            " 设置格式化时制表符占用的空格数
set softtabstop=4                           " 设置4个空格为制表符
set smarttab                                " 设置在行和段开始处使用制表符
set nowrap                                  " 设置禁止折行
set backspace=2                             " 设置使用回车键正常处理indent.eol,start等
set sidescroll=10                           " 设置向右滚动字符数
"set nofoldenable                           " 设置禁用折叠代码
"set foldmethod=indent                       " 设置折叠方式
"set splitbelow                             " 设置分割出来的窗口位于当前窗口下边
"set splitright                             " 设置分割出来的窗口位于当前窗口右边

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu                                " 设置vim自身命令行模式智能补全
set completeopt-=preview                    " 设置补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch                                " 设置高亮搜索
set incsearch                               " 设置增量搜索
set ignorecase                              " 设置搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup                                " 设置不备份
set noswapfile                              " 设置禁止生成临时文件
set autoread                                " 设置文件在vim之外修改过，自动重新载入
set autowrite                               " 设置自动保存
set confirm                                 " 设置在处理未保存或只读文件时，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tags文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./.tags;,.tags         

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim中允许使用man
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Usage:Man 3 printf
" Press q to quit man-page
runtime! ftplugin/man.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 优化设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap jj <Esc>                           " 设置映射 esc 键为 jj
nnoremap <leader>e :e ~/.vimrc<cr>          " 设置<leader>+e快速打开.vimrc
nnoremap <leader>s :source ~/.vimrc<cr>     " 设置<leader>+r刷新.vimrc
nnoremap <leader>x :w<cr>                   " 设置<leader>+s快速保存当前编辑文件
nnoremap <leader>q :q<cr>                   " 设置<leader>+q 	
inoremap <leader>q <Esc>:q<cr>
nnoremap <leader>h :edit ~/.vimplus/help.md<cr> " 查看vimplus的help文件
nnoremap <leader>H :execute ":help " . expand("<cword>")<cr> " 打开当前光标所在单词的vim帮助文档

" load vim default plugin
runtime macros/matchit.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 安装、更新、删除插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 分屏窗口移动
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"复制当前选中到系统剪切板
vmap <leader><leader>y "+y

" 打开文件自动定位到最后编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" 主题
set background=dark
let g:onedark_termcolors=256
colorscheme onedark

" 个性化
if filereadable(expand($HOME . '/.vimrc.local'))
    source $HOME/.vimrc.local
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h18 " 设置字体
    set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab栏
    set guicursor=n-v-c:ver5    " 设置光标为竖线
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'chxuan/cpp-mode'
Plug 'chxuan/vim-edit'
Plug 'chxuan/change-colorscheme'
Plug 'chxuan/prepare-code'
Plug 'chxuan/vim-buffer'
Plug 'MicoStrong/sharpvim-startify'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/LeaderF'
Plug 'mileszs/ack.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-endwise'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'Shougo/echodoc.vim'
Plug 'terryma/vim-smooth-scroll'
Plug 'rhysd/clever-f.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Chiel92/vim-autoformat'

call plug#end()            


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件airline设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件cpp-mode设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>y :CopyCode<cr>
nnoremap <leader>p :PasteCode<cr>
nnoremap <leader>U :GoToFunImpl<cr>
nnoremap <silent> <leader>a :Switch<cr>
nnoremap <leader><leader>fp :FormatFunParam<cr>
nnoremap <leader><leader>if :FormatIf<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件change-colorscheme设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件prepare-code设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:prepare_code_plugin_path = expand($HOME . "/.vim/plugged/prepare-code")


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件vim-buffer设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <c-p> :PreviousBuffer<cr>
nnoremap <silent> <c-n> :NextBuffer<cr>
nnoremap <silent> <leader>d :CloseBuffer<cr>
nnoremap <silent> <leader>D :BufOnly<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件vim-edit设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>
nnoremap <leader>r :ReplaceTo<space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件nerdtree设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
inoremap <silent> <leader>n <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件YCM设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0   " 停止提示是否载入本地ycm_extra_conf文件 
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '✹'
let g:ycm_seed_identifiers_with_syntax = 1  " 语法关键字补全
let g:ycm_complete_in_comments = 1  
let g:ycm_complete_in_strings = 1 
let g:ycm_server_python_interpreter = '/usr/bin/python2.7'
let g:ycm_collect_identifiers_from_tags_files = 1  " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_complete_in_comments = 1 " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1 " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>'] " 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>'] " 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
"let g:ycm_key_invoke_completion = ['<C-Space>']     " 主动补全, 默认为<C-Space>
"let g:ycm_key_list_stop_completion = ['<C-y>'] " 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
nnoremap <leader>u :YcmCompleter GoToDeclaration<cr>
" 已经使用cpp-mode插件提供的转到函数实现的功能
" nnoremap <leader>i :YcmCompleter GoToDefinition<cr> 
nnoremap <leader>o :YcmCompleter GoToInclude<cr>
nnoremap <leader>ff :YcmCompleter FixIt<cr>
nmap <F5> :YcmDiags<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件tagbar设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>
let g:airline#extensions#tagbar#enabled = 0  " 解决打开大文件光标移动非常慢，卡屏问题


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件incsearch.vim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件markdown设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let uname = system('uname -s')
if uname == "Darwin\n"
    let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
else
    let g:mkdp_path_to_chrome = '/usr/bin/google-chrome-stable %U'
endif
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件nerdtree-git-plugin设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件LeaderF设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>f :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件ack设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>F :Ack!<space>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件echodoc.vim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:echodoc_enable_at_startup = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件tabular设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件vim-smooth-scroll设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件gv设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件vim-gutentags设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件vim-autoformat配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:autoformat_verbosemode=1 "开启详细模式便于查错
au BufWrite * :Autoformat
