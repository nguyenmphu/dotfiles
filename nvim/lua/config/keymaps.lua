-- Chuyển đổi qua lại giữa các tab (buffers)
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Chuyển sang Tab trái" })
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Chuyển sang Tab phải" })

-- Sắp xếp lại vị trí của các tab
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineMovePrev<cr>", { desc = "Di chuyển Tab sang trái" })
vim.keymap.set("n", "<leader>br", "<cmd>BufferLineMoveNext<cr>", { desc = "Di chuyển Tab sang phải" })

-- Đóng tab (Lệnh `:bd` đóng buffer hiện tại)
vim.keymap.set("n", "<leader>c", "<cmd>bd<cr>", { desc = "Đóng Tab hiện tại" })

