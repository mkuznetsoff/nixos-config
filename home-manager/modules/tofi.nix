{ lib, ...}: {

  programs.tofi = {
    enable = true;
    settings = {
      font-size = lib.mkForce 12;
      font = lib.mkForce "Iosevka Nerd Font";
      selection-background-padding = 7;
      selection-background-corner-radius = 10;

      # Text cursor theme
      text-cursor-thickness = 2;

      # Text layout
      prompt-text = ">";
      prompt-padding = 7;
      result-spacing = 19;
      horizontal = "true";
      min-input-width = 200;

      # Window theming
      width = "100%";
      height = 40;
      outline-width = 0;
      border-width = 0;
      padding-top = 11;
      padding-bottom = 0;
      padding-left = 7;
      padding-right = 7;
      clip-to-padding = "false";

      # Window positioning
      anchor = "top";
      exclusive-zone = -1;

      # Behaviour
      text-cursor = "true";
      fuzzy-match = "true";
      drun-launch = "true";
      ascii-input = "true";

    };
  };
}
