{ pkgs, inputs, ... }:
{
  stylix = {

    enable = true;
    targets.waybar.enable = false;
#    targets.yazi.enable = false;

    #base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

    base16Scheme = {
      base00 = "#FCFBF9"; # Background
      base01 = "#F7F3EE"; # BackgroundAlt
      base02 = "#ECEBE8"; # Grey1
      base03 = "#9E9A95"; # Comment
      base04 = "#5A544C"; # ForegroundAlt
      base05 = "#605A52"; # Foreground
      base06 = "#7F7A73"; # Grey2
      base07 = "#706A63"; # Grey3

      base08 = "#8F5652"; # Red
      base09 = "#886A44"; # Orange
      base0A = "#AA5087"; # Berry (accent)
      base0B = "#747B4D"; # Green
      base0C = "#477A7B"; # Teal
      base0D = "#556995"; # Blue
      base0E = "#83577D"; # Purple
      base0F = "#947956"; # Orange9 (deep/brown)
    };


    image = ./ventura.jpg;

    cursor = {
      package = pkgs.apple-cursor;
      name = "macOS";
      size = 24;
    };

    fonts = {

      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka NF";
      };
      
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
      
      sansSerif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro;
        name = "SF Pro Display";
      };
      
      serif = {
        package = inputs.apple-fonts.packages.${pkgs.system}.sf-pro;
        name = "SF Pro Display";
      };
      
      sizes = {
        terminal = 14;
        applications = 11;
        popups = 11;
      };
    };

    targets.qt.platform = "qtct";

    #    opacity.terminal = 0.8;

    autoEnable = true;
  };
}
