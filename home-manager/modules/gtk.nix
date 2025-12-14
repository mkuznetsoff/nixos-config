{ pkgs, ... }:

{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Light";
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "pink";
      };
    };
  };
}
