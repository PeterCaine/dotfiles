local map=vim.keymap.set

map("n", "<space><space>x", "<CMD>source %<CR>")
map("n", "<space>x", ":.lua<CR>")
map("v", "<space>x", ":lua<CR>")

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory using Oil plugin" })

