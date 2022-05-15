local packer = require("packer")
packer.startup(
    function(use)
        use("wbthomason/packer.nvim")
        use("folke/tokyonight.nvim")
        use({
            'kyazdani42/nvim-tree.lua',
            requires = {
              'kyazdani42/nvim-web-devicons', -- optional, for file icon
            },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        })
        use({
            "akinsho/bufferline.nvim", 
            requires = { 
                "kyazdani42/nvim-web-devicons", 
                "moll/vim-bbye" 
            }
        })
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        use({
            'nvim-telescope/telescope.nvim',
            requires = { "nvim-lua/plenary.nvim" }
        })
        use({
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        })
    end
)


-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
