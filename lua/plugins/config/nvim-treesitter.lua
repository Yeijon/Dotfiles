local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = PARSERS,
  sync_install = true,
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- highlight non-brack delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = 1000,
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
}
