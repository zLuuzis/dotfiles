vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Abrir explorer" })

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Salvar arquivo" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Sair" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Meia página baixo centralizado" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Meia página cima centralizado" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Próximo resultado centralizado" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Resultado anterior centralizado" })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Sair do insert mode" })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Tornar executável" })
