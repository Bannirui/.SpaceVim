### nvim配置
[参考](https://www.cnblogs.com/SR-Program/p/15773546.html)

#### 文件配置

* 配置根目录

```shell
~/.config/nvim
```

* 目录结构
```shell
.
├── README.md
├── after
│   └── plugin
│       ├── autopairs.rc.lua
│       ├── bufferline.lua
│       ├── dashboard.lua
│       ├── defx-icons.rc.vim
│       ├── defx.rc.vim
│       ├── formatter.lua
│       ├── indent-blakline.lua
│       ├── jedi.vim
│       ├── kommentary.lua.bak
│       ├── lsp-colors.rc.vim
│       ├── lspconfig.rc.vim
│       ├── lspsaga.rc.vim
│       ├── lualine.lua
│       ├── nvim-cmp.lua
│       ├── nvim-lspinstall.lua.bak
│       ├── nvim-repl.vim
│       ├── nvim-treesitter.lua
│       ├── pydocstring.vim
│       ├── rainbow.rc.vim
│       ├── snippets.lua
│       ├── telescope.lua
│       ├── terminal.lua
│       ├── tree.lua
│       ├── ultiSnip.vim
│       ├── undotree.vim
│       ├── vim-choosewin.rc.vim
│       ├── vimspector.vim
│       └── vista.vim
├── doc
│   └── def.txt
├── init.vim                            // 配置文件入口
├── lua
├── maps.vim                            // 按键映射
├── plugin
│   └── packer_compiled.lua
├── plugins.lua                         // 插件管理
├── sample_vimspector_json
│   └── python.json
└── vimrc.vim                           // vim基础配置
```

#### 快捷键

* 文件管理器

| 快捷键 | 功能 |
|---| ---|
| sf | 启动文件管理器 |
| i | 进入下一层目录 |
| h | 返回上一级目录 |
| K | 创建目录 |
| N | 创建文件 |
| m | 文件标记选择 |

* 文件搜索

| 快捷键 | 功能 |
|---| ---|
| ts | 使用文件搜索 |

* 注释

| 快捷键 | 功能 |
|---| ---|
| gcc | 注释一行 |
| gc+Num+方向 | 向指定方向注释Num行 |

* 目录树

| 快捷键 | 功能 |
|---| ---|
| Enter/o | 打开目录/文件 |
| Ctrl+] | 切换到光标所在目录 |
| a | 新建文件 |
| r | 重命名文件 |
| x | 剪切文件 |
| c | 复制文件 |
| p | 粘贴文件 |
| d | 删除文件 |
| H | 是否隐藏文件 |
| Tab | 预览文件 |
| Ctrl+v | 垂直拆分中打开文件 |
| Ctrl+x | 水平拆分中打开文件 |

* 代码编辑

| 快捷键 | 功能 |
|---| ---|
| za | 代码折叠 ｜

* 终端

| 快捷键 | 功能 |
|---| ---|
| ctrl+t | 调用终端 |

* 查看

| 快捷键 | 功能 |
|---| ---|
| ss | 水平分割 |
| sv | 垂直分割 |
| s+方向(h/j/k/l) | 多窗口间移动 |
| Alt+方向 | 调节窗口大小 |
| Ctrl+方向 | 插入模式方向移动 |
| L | 快速到行尾 |
| H | 快速到行首 |
| tab | 进入下一个标签栏 |
| Shift+tab | 进入上一个标签栏 |
