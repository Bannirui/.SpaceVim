" 配置文件导入 "{{{
" ---------------------------------------------------------------------
" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
"./lua/plugins.lua
lua require('plugins')
" 按键映射
runtime ./maps.vim

" 加载配置文件
source ~/.config/nvim/after/plugin/vimspector.vim
source ~/.config/nvim/after/plugin/defx-icons.rc.vim
source ~/.config/nvim/after/plugin/rainbow.rc.vim
source ~/.config/nvim/after/plugin/ultiSnip.vim
