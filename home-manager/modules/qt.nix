{ pkgs, ... }: {
  
  qt = {
    enable = true;
    platformTheme = "qtct";
    style = {
      name = "kvantum";
    };
  };

  home.packages = [
    (pkgs.gruvbox-kvantum.override {
      variant = "Gruvbox-Dark-Blue";
    })
  ];
  
  xdg.configFile = {
            "Kvantum/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue.kvconfig".source = "${pkgs.gruvbox-kvantum}/share/Kvantum/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue.kvconfig";
            "Kvantum/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue.svg".source = "${pkgs.gruvbox-kvantum}/share/Kvantum/Gruvbox-Dark-Blue/Gruvbox-Dark-Blue.svg";
  };
}
