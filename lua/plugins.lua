local packer = require("packer")
packer.startup(
    function(use)
        use("wbthomason/packer.nvim")
        use("folke/tokyonight.nvim")	
        use {
          'kyazdani42/nvim-tree.lua',
          requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
          },
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
    end
)
