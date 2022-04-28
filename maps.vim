"-------------------------------------------------------------------------------
" window
"-------------------------------------------------------------------------------
" Split window
" 水平分屏
nmap ss :split<Return><C-w>w
" 垂直分屏
nmap sv :vsplit<Return><C-w>w
" Move window
"nmap <Space> <C-w>w
"map s<left> <C-w>h
"map s<up> <C-w>k
"map s<down> <C-w>j
"map s<right> <C-w>l
" 分屏窗口间移动 sh=左移
map sh <C-w>h
" 分屏窗口间移动 sk=下移
map sk <C-w>k
" 分屏窗口间移动 sj=上移
map sj <C-w>j
" 分屏窗口间移动 sl=右移
map sl <C-w>l

" 调整分屏窗口大小 alt+方向(上下左右)
nmap <M-left> <C-w><
nmap <M-right> <C-w>>
nmap <M-up> <C-w>+
nmap <M-down> <C-w>-

" jk=esc
inoremap jk <Esc>

" ctrl+s=保 存
noremap <C-s> :w<CR>

" 代码格式化
noremap <leader>f :Format<CR> 
noremap <leader>r :luafile ~/.wp/lua/run.lua<CR>

" shift+q=强制退出
map Q :q<CR>

" R=重新加载设置
map R :source $MYVIMRC<CR>

"自动关闭标签
inoremap <buffer> <C-v> <esc>yiwi<lt><esc>ea></><esc>hpF>i

set iskeyword+=<,>
iab <h1> <lt>h1> <lt>/h1><esc>5ha

"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Coc智能处理，使用IDEA Alt+Enter 同样按键
noremap <M-Enter> :CocAction<CR>


"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
" Open current directory
"nmap te :tabedit
"nmap <S-Tab> :tabprev<Return>
nmap <S-Tab> :bprev<Return>
"nmap <Tab> :tabnext<Return>
nmap <Tab> :bnext<Return>
" 窗口管理器
" invoke with '-'
nmap  -  <Plug>(choosewin)
"nmap  sw  <Plug>(choosewin)
"nmap  <leader>w  <Plug>(choosewin)


" 执行vistar函数展示功能
nnoremap <silent><nowait> tb :<C-u>Vista!!<cr>

" ub=查看文件修改历史
nnoremap ub :UndotreeToggle<CR>

" ctrl+t=开启终端
nnoremap <C-t> :ToggleTerm<CR>

"so=快速查看函数变量
nnoremap so :SymbolsOutline<CR>

" ts=开启文件搜索功能
nmap ts :Telescope<CR>

" 目录树
" nt=打开/关闭目录树
nnoremap nt :NvimTreeToggle<CR>
" nr=刷新目录
nnoremap nr :NvimTreeRefresh<CR>
" nf=查找目录树
nnoremap nf :NvimTreeFindFile<CR>

" 快速定位错误代码
" use <C-N> and <C-P> for next/prev.
nnoremap <silent> hn <cmd>QNext<CR>
nnoremap <silent> hp <cmd>QPrev<CR>
" toggle the quickfix open/closed without jumping to it
nnoremap <silent> <leader>q <cmd>QFToggle!<CR>
nnoremap <silent> <leader>l <cmd>LLToggle!<CR>

" repl 进行调试
" neoremae <leader><leader>e :ReplToggle<CR>
nnoremap re :ReplToggle<CR>
nmap <leader>e <Plug>ReplSendLine
vmap <leader>e <Plug>ReplSendVisual


" 执行python代码
autocmd FileType python map <buffer> <C-r> :w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-r> <esc>:w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>
" 代码进行注释
nmap <silent> <C-_> <Plug>(pydocstring)
