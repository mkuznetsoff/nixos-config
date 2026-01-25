{...}: {
  programs.mpv = {
    enable = true;
    config = {
      #sub-font = "'Noto Sans Bold'";
      sub-bold = "yes";
      sub-border-size = 0;
      target-prim = "bt.709";
      target-colorspace-hint = "no";
    };
  };

}
