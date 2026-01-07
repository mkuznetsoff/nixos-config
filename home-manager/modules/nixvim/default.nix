{pkgs, ... }:
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
    ./nvim-tree.nix
    ./markdown.nix
    ./guess-indent.nix
    ./vimwiki.nix
    ./treesitter.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    # colorschemes.base16 = {
    #   enable = true;
    #   colorscheme = "one-light";
    #   autoLoad = true;
    # };
    # extraConfigVim = ''
  # syntax enable
  # set termguicolors
  # colorscheme base16-one-light
# '';

  };
}
