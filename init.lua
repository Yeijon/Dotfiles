
-- Path
LAZY_PATH = vim.fn.stdpath("data") .. "/lazy" 

-- Colorscheme
SCHEME = "nord"


-- Configurations
require "user.option"
require "user.keymaps"
require "plugins.init"
