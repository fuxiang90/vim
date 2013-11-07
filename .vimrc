"----------------------------------------------------
" 外观设置
"----------------------------------------------------
if (has("gui_running"))
	" 最大化窗口
	autocmd GUIEnter * simalt ~x

	" 关闭工具栏
	set guioptions-=T

	" 设置字体。
	" 字体名称可以通过前一节介绍的语句获得，
	" 如果字体名称中含有空格，
	" 需要在空格前面加上一个反斜杠，如下：
	set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI
endif

" 开启与关闭 粘贴模式（临时去掉自动缩进）
nmap <F3> :set paste<CR>
nmap <F4> :set nopaste<CR>

" 自动保存
set autowrite

" 打开 VIM 的状态栏标尺
set ruler

" 显示行号
"set number

" 关键字上色
syntax on

" 侦测文件类型
 filetype on
"
" " 载入文件类型插件
 filetype plugin on
"
" 进入插入模式时改变状态栏颜色（仅限于Vim 7）
set laststatus=2
if version >= 700
  au InsertEnter * hi StatusLine guibg=#818D29 guifg=#FCFCFC gui=none
  au InsertLeave * hi StatusLine guibg=#EEEEEE guifg=#363636 gui=none
endif


"----------------------------------------------------
" 编辑行为
"----------------------------------------------------
" 不向下兼容 VI
set nocompatible

" 设定缩进参数以及 Tab
filetype indent on
set autoindent
set expandtab " 用空格代替TAB
set shiftwidth=4
set softtabstop=4
set tabstop=4

set listchars=tab:>-,trail:-

" 打开 C/C++ 风格的自动缩进
"set cin

" 打开普通文件类型的自动缩进
"set ai

" 依缩进折叠
"set foldmethod=indent
"set foldlevel=1

set backspace=indent,eol,start
" 设置tags
set tags+=/home/libaoli/pack/MLLib/tags:/home/libaoli/isearch/trunk/tags:/home/libaoli/harrypotter/harrypotter/trunk/tags

" 不在单词中间断行
set lbr

" 打开断行模块对亚洲语言支持
set fo+=mB

" 显示括号配对情况
set sm

" 不使用 selectmode
set selectmode=

" 指定在选择文本时， 光标所在位置也属于被选中的范围
set selection=inclusive

if (has("gui_running"))
	" 图形界面下的设置
	set nowrap
	set guioptions+=b
	colo torte
else
	" 字符界面下的设置
	set wrap
	colo ron
endif 

" Match 括号
set showmatch

" 搜索时高亮显示被找到的文本
set hlsearch

" 搜索时在未完全输入完毕要检索的文本时就开始检索
set is

" r 确保 Vim 在回车后自动追加注释符号
" mM 确保Vim 能在中文字符之间折行而不要求空格的存在
set formatoptions+=rmM

" 不备份文件
set nobackup

" 设置word包含的字符
set iskeyword+=$

" 粘贴模式切换可以避免自动缩进的带来的格式影响
set nopaste pastetoggle=<F11>


"----------------------------------------------------
" 编码设置
"----------------------------------------------------
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,chinese,taiwan,latin1
set mouse=i

map <F12> :!python %<cr>

"----------------------------------------------------
" 插件设置
"----------------------------------------------------
"source ~/.vim/php-doc.vim
"source ~/.vim/bufexplorer.vim

map <F12> :!python %<cr>



"filetype plugin indent on
let g:snips_author='Ruchee'

let g:snipMate = {}

" C++的编译和运行
map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc


"python 编译
map <F7> :call CompileRunPython()<CR>
func! CompileRunPython()
exec "w"
exec "!python  % -o %<"
"exec "! ./%<"
endfunc


map <C-s> :w<CR>
imap <C-s> <C-o>:w<CR>


"颜色设置"

colorscheme desert

"colorscheme torte
"highlight Search term=reverse ctermbg=4 ctermfg=7
"highlight Normal ctermbg=black ctermfg=white

"highlight Comment ctermfg=Green
"highlight Comment ctermfg=darkcyan
""highlight Comment ctermfg=blue
"set background=light

