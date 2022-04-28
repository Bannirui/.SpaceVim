---@diagnostic disable: undefined-global
--在没有安装packer的电脑上，自动安装packer插件
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	 --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
	function()
		-- Packer can manage itself
		use { "wbthomason/packer.nvim" }
		-- 状态栏插件
		use { "nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true} }
		-- bufferline显示标签页 于lualine配合使用
		use { "akinsho/bufferline.nvim" }
		-- dashboard开屏插件
		use { "glepnir/dashboard-nvim" }
		-- 文件管理插件 类似于ranger
		use {
			"Shougo/defx.nvim",
			requires = {
				"kristijanhusak/defx-icons", -- defx文件管理图标支持
				"t9md/vim-choosewin" -- 窗口选择器 可以让defx使用i打开文件
			}
		}
		-- LSP客户端
		use { "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" }
		use {
			"hrsh7th/nvim-cmp",
			requires = {
				"hrsh7th/cmp-nvim-lsp", -- neovim内置lsp客户端的nvim-cmp源
				"onsails/lspkind-nvim", -- 美化自动完成提示信息
				"hrsh7th/cmp-buffer", -- 从buffer中智能提示
				"hrsh7th/cmp-nvim-lua", -- nvim-cmp source for neovim Lua API
				"octaltree/cmp-look", -- 用于完成英语单词
				"hrsh7th/cmp-path", -- 自动提示硬盘上的文件
				"hrsh7th/cmp-calc", -- 输入数学算式（如1+1=）自动计算
				"f3fora/cmp-spell", -- nvim-cmp 的拼写源基于 vim 的拼写建议
				"hrsh7th/cmp-emoji", -- 输入: 可以显示表情
			}
		}
		-- 代码段提示
		use {
			"L3MON4D3/LuaSnip",
			requires = {
				"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
				"rafamadriz/friendly-snippets" -- 代码段合集
			}
		}
		-- python IDE
		use 'kabouzeid/nvim-lspinstall'
		-- 显示css的代码的颜色
		use 'ap/vim-css-color'
		-- 符号自动匹配
		use 'windwp/nvim-autopairs'
		-- 文件搜索预览等
		use {
			"nvim-telescope/telescope.nvim",
    		requires = {
      			"nvim-lua/plenary.nvim",
      			"kyazdani42/nvim-web-devicons"
    		}
		}
		-- 加速文件搜索
		use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
		-- 语法高亮
		use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}
		--彩虹括号
		use 'luochen1990/rainbow'
		--注释插件
		use "b3nj5m1n/kommentary"
		-- indent缩进线
		use "lukas-reineke/indent-blankline.nvim"
		-- 文件管理树
		use {
    		'kyazdani42/nvim-tree.lua',
    		requires = {
      		'kyazdani42/nvim-web-devicons', -- optional, for file icon
    		},
    		config = function() require'nvim-tree'.setup {} end
		}
		-- 显示文件修改记录
      	use "mbbill/undotree"
		-- 代码调试
		use "puremourning/vimspector"
		--  代码函数注释插件
		use "heavenshell/vim-pydocstring"
		-- 代码折叠插件
		use "tmhedberg/SimpylFold"
		use "Konfekt/FastFold"
		use "zhimsel/vim-stay"
		-- formatter代码格式化
		use "mhartington/formatter.nvim"
		-- vista函数展示
		use "liuchengxu/vista.vim"
		-- 代码跳转
 		use "davidhalter/jedi-vim"
		-- 展示函数变量名
		use "simrat39/symbols-outline.nvim"
		-- 代码repl插件
  		use "tpope/vim-repeat"
  		use "pappasam/nvim-repl"
		-- 终端调用插件
		use "akinsho/nvim-toggleterm.lua"
		-- 符号匹配
  		use "tpope/vim-surround"
  		-- 快速选中
  		use "gcmt/wildfire.vim"
		-- switch转换
		use "AndrewRadev/switch.vim"
		-- 代码块引擎
		use "SirVer/ultisnips"
		-- 代码块片段
		use "honza/vim-snippets"
		-- markdwon预览插件
		use "suan/vim-instant-markdown"
		-- 主题
		use { 'morhetz/gruvbox' }

	end,
	config = {
		max_jobs = 16,
		git = {
			   default_url_format = "https://github.com/%s"
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
