-- use lazy.nvim to manage plugins
local lazypath = LAZY_PATH .. "/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- the plugins I used 
require("lazy").setup({

  --+---------------+--
  --|     Theme     |--
  --+---------------+--
  
  {
    "ThemerCorp/themer.lua",
    config = function()
      require("plugins.config.themer.init")    
    end
  },

  --+---------------+--
  --|     Editor    |--
  --+---------------+--

  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("plugins.config.neotree")
    end,
    keys = "<leader>f",
  },

  -- better syntax support
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("plugins.config.nvim-treesitter")
    end
  },

  -- better indentation
  {
    "lukas-reineke/indent-blankline.nvim", 
    config = function()
      require("plugins.config.indent-blankline")
    end
  },

  -- setup session
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cond = false,
    config = function()
      require("plugins.config.alpha-nvim")
    end
  };

---- git false
-- cursorline
--  {
--    "yamatsum/nvim-vursorline",
--    config = function()
--      require('nvim-cursorline').setup {
--        cursorline = {
--          enable = true,
--          timeout = 1000,
--          number = false,
--        },
--        cursorword = {
--          enable = true,
--          min_length = 3,
--          hl = { underline = true },
--        }
--      }
--    end
--  },



})
