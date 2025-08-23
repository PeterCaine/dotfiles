return {
  "Mofiqul/dracula.nvim",
  priority = 1000, -- load before other UI plugins
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("dracula")
  end,
}
