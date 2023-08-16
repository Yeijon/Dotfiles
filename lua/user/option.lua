
local options = {
  -- ui
  number = true,             -- show the number of the line
  relativenumber = true,     -- I like the scrolling numbers
  signcolumn = "yes",        -- always show the sign column, otherwise it would shift the text each time
  cursorline = true,         -- higheight the current line

  list = true,
  wrap = true,               -- dispaly lines as one long line
  linebreak = true,          -- companion to wrap, don't split words
  scrolloff = 8,             -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,         -- Leave some white space on the sides of the screen for readability and comfort

  expandtab = true,          -- convert tabs to spaces
  showmode = false,          -- don't want to see INSERT anymore
  showtabline = 2,           -- always show tabs
  shiftwidth = 2,            -- number of space inserted for indentation
  smartindent = true,        -- auto indent at beginning
  tabstop = 2,               -- number of space in a tab

  -- about files
  backup = false,            -- don't need backup files
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  conceallevel = 0,          -- so that '' is visible in md file
  fileencoding = "utf-8",    -- the encoding written to a file
  mouse = "a",               -- allow the mouse to be used in nvim
  pumheight = 10,            -- pop up menu height

  splitbelow = true,         -- force all horizontalsplits to go below current window
  splitright = true,         -- .....right....

  undofile = true,           -- record the undo operations
  swapfile = true,           -- protect when computer momentarily shutdown
  writebackup = false,       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

  updatetime = 300,          -- auto save faster, for 300ms
  timeoutlen = 300,          -- I want faster when I tape command in all mode

  -- search
  hlsearch = true,           -- highlight all matches on previous search pattern
  ignorecase = true,         -- ignore case in search patterns
  smartcase = true,          -- don't care the case, like ignorecase but smarter 

  -- cmd
  cmdheight = 2,             -- more space in the neovim command line for displaying messages
}

-- vim.opt.listchars:append "space:·"  -- better indentation

for k, v in pairs(options) do
  vim.opt[k] = v
end
