return {
  { "catppuccin/nvim", name = "catppuccin" },

  {
    "catppuccin/nvim", -- Mượn plugin này để kích hoạt cấu hình
    priority = 1000, -- Đảm bảo load đầu tiên để tránh chớp đen màn hình
    config = function()
      -- Khai báo nền sáng mặc định
      vim.opt.background = "light" 
      -- Đặt Catppuccin Latte (bản sáng) làm theme khởi động
      vim.cmd.colorscheme("catppuccin-latte") 
    end,
  }
}
