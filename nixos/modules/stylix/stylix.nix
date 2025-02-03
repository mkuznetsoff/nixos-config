{ pkgs, ... }:
{
  stylix = {

    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    image = ./dsotm.png;

    cursor = {
      package = pkgs.apple-cursor;
      name = "macOS";
      size = 32;
    };

    fonts = {

      monospace = {
        package = pkgs.nerdfonts.override {fonts = ["JetBrainsMono"];};
        name = "JetBrainsMono Nerd Font Mono";
      };
      
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
      
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      
      serif = {
        package = pkgs.newcomputermodern;
        name = "Computer Modern";
      };
      
      sizes = {
        terminal = 12;
        applications = 11;
        popups = 12;
      };
    };

    #    opacity.terminal = 0.8;

    autoEnable = true;
  };
}
