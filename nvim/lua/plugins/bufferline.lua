return {
  {
    "akinsho/bufferline.nvim",
    version = "*", -- Yêu cầu phiên bản ổn định
    dependencies = "nvim-tree/nvim-web-devicons", -- Cần thiết để hiển thị icon cho từng loại file
    config = function()
      require("bufferline").setup({
        options = {
          -- Sử dụng các lệnh đóng buffer chuẩn để tránh lỗi layout
          close_command = "bdelete! %d", 
          right_mouse_command = "bdelete! %d", 
          left_mouse_command = "buffer %d", 
          
          -- Các lựa chọn hiển thị
          show_close_icon = false,
          show_buffer_close_icons = true,
          separator_style = "thin", -- Kiểu phân cách giữa các tab: "slant", "padded_slant", "thick", "thin"
          enforce_regular_tabs = false,
          always_show_bufferline = true, -- Luôn hiện thanh tab kể cả khi chỉ có 1 file
          
          -- Tích hợp với theme (Ví dụ: tự động lấy màu nền đồng bộ với Catppuccin)
          themable = true,
          
          -- Tích hợp với Nvim-Tree (nếu bạn có dùng thanh quản lý file bên trái)
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              text_align = "left",
              separator = true,
            },
          },
        },
      })
    end,
  },
}

