{
  programs.nixvim.plugins.alpha = {
    enable = true;
    layout =
      let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in
      [
        (padding 7)
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = [
            "      d888888b                         d888888b "
            "   d888    8888b                    d888888   888b "
            " d88    88  898888b               d8888  888     88b "
            "d8P        88888888b             d88888888888     b8b "
            "88        8888888888             88888888888       88 "
            "88       88888888888             8888888888        88 "
            "98b     88888888888P             988888888        d8P "
            " 988     888  8888P      _=_      9888898  88    88P "
            "   9888   888888P      q(-_-)p       98888    888P "
            "      9888888P         '_) (_`         9888888P "
            "         88            /__/  |            88 "
            "         88          _(<_   / )_          88 "
            "        d88b        (__|_|_|_/__)        d88b "
            "                                              " 
            "                                              " 
            "        NixOS󱄅 rebuilding -> guru meditation󰚀  " 
          ];
        }
         (padding 15)
        # {
        #   type = "button";
        #   val = "  Find File";
        #   on_press.raw = "require('telescope.builtin').find_files";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "f"
        #       ":Telescope find_files <CR>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "f";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
        # (padding 1)
        # {
        #   type = "button";
        #   val = "  New File";
        #   on_press.__raw = "function() vim.cmd[[ene]] end";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "n"
        #       ":ene <BAR> startinsert <CR>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "n";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
        # (padding 1)
        # {
        #   type = "button";
        #   val = "󰈚  Recent Files";
        #   on_press.raw = "require('telescope.builtin').oldfiles";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "r"
        #       ":Telescope oldfiles <CR>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "r";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
        # (padding 1)
        # {
        #   type = "button";
        #   val = "󰈭  Find Word";
        #   on_press.raw = "require('telescope.builtin').live_grep";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "g"
        #       ":Telescope live_grep <CR>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "g";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
        # (padding 1)
        # {
        #   type = "button";
        #   val = "  Restore Session";
        #   on_press.raw = "require('persistence').load()";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "s"
        #       ":lua require('persistence').load()<cr>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "s";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
        # (padding 1)
        # {
        #   type = "button";
        #   val = "  Quit Neovim";
        #   on_press.__raw = "function() vim.cmd[[qa]] end";
        #   opts = {
        #     keymap = [
        #       "n"
        #       "q"
        #       ":qa<CR>"
        #       {
        #         noremap = true;
        #         silent = true;
        #         nowait = true;
        #       }
        #     ];
        #     shortcut = "q";

        #     position = "center";
        #     cursor = 3;
        #     width = 40;
        #     align_shortcut = "right";
        #     hl_shortcut = "Keyword";
        #   };
        # }
      ];
  };
}
