{pkgs, ...}:
{
  
  programs.nixvim.plugins = {
    surround.enable = true;
    which-key.enable = true;
    vim-css-color.enable = true;
    better-escape.enable = true;
    commentary.enable = true;
    autoclose.enable = true;
    auto-save.enable = true;
    none-ls.enable = true;
    nix.enable = true;
    indent-blankline.enable = true;
    web-devicons.enable = true;
    treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        make
        markdown
        nix
        regex
        toml
        vim
        vimdoc
        xml
        yaml
        latex
        python
        java
      ];
    };
  };

}
