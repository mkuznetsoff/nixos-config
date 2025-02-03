{ ... }:
{
  imports = [
    
    ./plugins.nix
    ./options.nix
    ./bufferline.nix
    ./telescope.nix
    ./lualine.nix
    ./lsp.nix
    ./toggleterm.nix
    ./cmp.nix
  ];

  programs.nixvim = {
    enable = true;
    globals.mapleader = " ";
    defaultEditor = true;
    colorschemes.base16.enable = true;
    colorschemes.base16.colorscheme = "gruvbox-dark-hard";


  };
}
