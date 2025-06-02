{ ... }: {

  programs.nixvim = {
  
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    # Keymaps
    keymaps =
    [
      # Буферы
      {
        action = ":Telescope buffers<CR>";
        key = "<leader>bs";
        options = {
          silent = true;
          noremap = true;
          desc = "Search buffers";
        };
      }

      {
        action = ":bn<CR>";
        key = "<leader>bn";
        options = {
          silent = true;
          noremap = true;
          desc = "Next buffer";
        };
      }
      
      {
        action = ":bp<CR>";
        key = "<leader>bp";
        options = {
          silent = true;
          noremap = true;
          desc = "Previous buffer";
        };
      }
      
      {
        action = ":bd<CR>";
        key = "<leader>bd";
        options = {
          silent = true;
          noremap = true;
          desc = "Delete buffer";
        };
      }
      
      # Окна
      {
        action = ":split<CR>";
        key = "<leader>ws";
        options = {
          silent = true;
          noremap = true;
          desc = "Split window horizontally";
        };
      }
      
      {
        action = ":vsplit<CR>";
        key = "<leader>wv";
        options = {
          silent = true;
          noremap = true;
          desc = "Split window vertically";
        };
      }
      
      {
        action = "<C-w>h";
        key = "<leader>wh";
        options = {
          silent = true;
          noremap = true;
          desc = "Move to left window";
        };
      }
      
      {
        action = "<C-w>l";
        key = "<leader>wl";
        options = {
          silent = true;
          noremap = true;
          desc = "Move to right window";
        };
      }
      
      {
        action = "<C-w>j";
        key = "<leader>wj";
        options = {
          silent = true;
          noremap = true;
          desc = "Move to lower window";
        };
      }
      
      {
        action = "<C-w>k";
        key = "<leader>wk";
        options = {
          silent = true;
          noremap = true;
          desc = "Move to upper window";
        };
      }
      
      {
        action = "<C-w>w";
        key = "<leader>ww";
        options = {
          silent = true;
          noremap = true;
          desc = "Move to next window";
        };
      }
      
      {
        action = ":close<CR>";
        key = "<leader>wc";
        options = {
          silent = true;
          noremap = true;
          desc = "Close current window";
        };
      }
      
      {
        action = ":only<CR>";
        key = "<leader>wo";
        options = {
          silent = true;
          noremap = true;
          desc = "Close all other windows";
        };
      }
      
      # Terminal 
      
      {
        action = ":ToggleTerm direction=horizontal<CR>";
        key = "<leader>oh";
        options = {
          silent = true;
          noremap = true;
          desc = "Toggle horizontal terminal";
        };
      }
      
      {
        action = ":ToggleTerm direction=vertical size=64<CR>";
        key = "<leader>ot";
        options = {
          silent = true;
          noremap = true;
          desc = "Toggle vertical terminal";
        };
      }
      
      {
        action = ":ToggleTerm direction=tab <CR>";
        key = "<leader>oT";
        options = {
          silent = true;
          noremap = true;
          desc = "Toggle tab terminal";
        };
      }
      
      # Файлы и поиск
      {
        action = ":Telescope find_files<CR>";
        key = "<leader>ff";
        options = {
          silent = true;
          noremap = true;
          desc = "Search files";
        };
      }
      
      {
        action = ":Telescope frecency<CR>";
        key = "<leader>fr";
        options = {
          silent = true;
          noremap = true;
          desc = "Recent files";
        };
      }
      
      {
        action = ":Telescope file_browser<CR>";
        key = "<leader>fb";
        options = {
          silent = true;
          noremap = true;
          desc = "File browser";
        };
      }
    ];
  };
}
