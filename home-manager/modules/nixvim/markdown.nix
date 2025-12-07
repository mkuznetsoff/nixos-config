{
  programs.nixvim = {
    plugins = {
      render-markdown = {
        enable = true;
        settings = {
          enable = true;
          bullet = {
            right_pad = 1;
          };
          code = {
            above = " ";
            below = " ";
            border = "thick";
            language_pad = 2;
            left_pad = 2;
            position = "right";
            right_pad = 2;
            sign = false;
            width = "block";
          };
          heading = {
            border = true;
            position = "inline";
            sign = false;
            width = "full";
          };
          render_modes = true;
          signs = {
            enabled = false;
          };
        };
      };

      obsidian = {
        enable = true;
        settings = {
          completion = {
            min_chars = 2;
            nvim_cmp = true;
          };
          new_notes_location = "current_dir";
          workspaces = [
            {
              name = "udsu";
              path = "~/Notes";
            }
          ];
        };
      };
      markdown-preview = {
        enable = true;
        settings = {
          auto_close = 0;
          browser = "zen";
          echo_preview_url = 1;
          markdown_css = "/home/mk/Notes/splendor.css";
          page_title = "\${name}";
          preview_options = {
            disable_filename = 1;
          };
        };
      };
    };

    extraConfigLua = ''
      local Terminal  = require("toggleterm.terminal").Terminal

      -- создаём один глобальный терминал для всех Java запусков
      if not _G.java_term then
      _G.java_term = Terminal:new({hidden = true, direction = "horizontal"})
      end

      function RunJavaBlock()
      local md_path = vim.fn.expand("%:p:h")
      local filename = vim.fn.input("Java file name (without .java): ")
      if filename == "" then return end
      local java_file = md_path .. "/" .. filename .. ".java"

      -- выделенные строки
      local start_pos = vim.fn.getpos("'<")[2] - 1
      local end_pos = vim.fn.getpos("'>")[2]
      local lines = vim.api.nvim_buf_get_lines(0, start_pos, end_pos, false)

      -- запись в файл
      local f = io.open(java_file, "w")
      for _, line in ipairs(lines) do
      f:write(line .. "\n")
      end
      f:close()

      -- открываем терминал, если закрыт
      _G.java_term:toggle()

      -- отправляем команду через send
      _G.java_term:send("javac " .. java_file .. " && java -cp " .. md_path .. " " .. filename .. "\n")
      end

    '';


  };



}
