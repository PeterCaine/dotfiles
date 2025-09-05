vim.g.mapleader=" "

require("config.lazy")
-- OSC52 clipboard for SSH/headless
--vim.opt.rtp:append(vim.fn.expand('~/.local/share/nvim/site/pack/plugins/start/nvim-osc52'))
--require('osc52').setup {}

local function copy(lines, _)
  require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
  return {vim.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('')}
end

-- vim.g.clipboard = {
--   name = 'osc52',
--   copy = {['+'] = copy, ['*'] = copy},
--   paste = {['+'] = paste, ['*'] = paste},
-- }

-- Optional convenience: <leader>y copies visual selection
vim.keymap.set('x', '<leader>y', require('osc52').copy_visual)


vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n','<Esc>',':nohlsearch<Bar>echo<CR>',{silent=true})
