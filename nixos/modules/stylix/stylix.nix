{ pkgs, ... }:
{
  stylix = {

    enable = true;

    #base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    base16Scheme = {
      base00 = "#1e1e2e"; # base
      base01 = "#181825"; # mantle
      base02 = "#313244"; # surface0
      base03 = "#45475a"; # surface1
      base04 = "#585b70"; # surface2
      base05 = "#cdd6f4"; # text
      base06 = "#f5e0dc"; # rosewater
      base07 = "#b4befe"; # lavender
      base08 = "#f38ba8"; # red
      base09 = "#fab387"; # peach
      base0A = "#f9e2af"; # yellow
      base0B = "#a6e3a1"; # green
      base0C = "#94e2d5"; # teal
      base0D = "#89b4fa"; # blue
      base0E = "#cba6f7"; # mauve
      base0F = "#f2cdcd"; # flamingo
    };

    image = ./dsotm.png;

    cursor = {
      package = pkgs.apple-cursor;
      name = "macOS";
      size = 32;
    };

    fonts = {

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka Medium Nerd Font Mono";
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
