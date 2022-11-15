local M = {}

M.general = {
  i ={
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
  },
  n = {
    -- [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<C-u>"]={"10k","向上移动10行"},
    ["<C-a>"]={"10j","向下移动10行"},
    ["<C-d>"]={"10j","向下移动10行"},
    -- ["*"] = {":keepjumps normal! mi*`i<CR>","防止*选中市默认向下一个跳"}
    ["*"] = {":keepjumps normal! mi*`i<CR>:let @/.='\\C'<CR>","防止*选中时默认向下一个跳,:let @/.='\\C'<CR> 表示大小写敏感"},
    ["<leader>v"] = { "<C-w>v", "split window left" },
    ["L"]={"$","行尾"},
    ["H"]={"0","行首"},
  },
}

M.lspsaga = {

  n = {
    ["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", "lspsaga finder", opts = { silent = true } },
    ["<leader>o"]={"<cmd>LSoutlineToggle<CR>","outline",{silent = true}},
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.tabufline = {
  plugin = true,

  n = {
    -- cycle through buffers
    ["<TAB>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    ["<S-Tab>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto prev buffer",
    },

    -- pick buffers via numbers
    ["<Bslash>"] = { "<cmd> TbufPick <CR>", "Pick buffer" },

    -- close buffer + hide terminal buffer
    ["<C-x>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "close buffer",
    },
  },
}

return M
