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
    ./keymaps.nix
    ./snippets.nix
    ./dashboard.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.base16.enable = true;
    colorschemes.base16.colorscheme = "catppuccin-mocha";
  };
}
