{ pkgs, unstable, inputs, ... }: {
  
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    
    #utils
    fastfetch
    git
    nixd
    nixfmt-rfc-style
    tree
    wget
    cmake
    wl-clipboard
    unzip
    imv
    # p7zip-rar

    #apps
    inputs.nix-photogimp.packages.${pkgs.system}.default
    inputs.zen-browser.packages.${pkgs.system}.default
    inputs.hyprpanel.packages.${pkgs.system}.default
    libreoffice-qt6
    qbittorrent
    unstable.telegram-desktop
    calibre
    zathura
    nautilus

    #fonts
#    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    powerline-fonts
    powerline-symbols
    font-awesome
    newcomputermodern
    iosevka
    noto-fonts
    noto-fonts-extra   
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    corefonts

    ##wine
    #wineWowPackages.stable
    #winetricks
##    wineWowPackages.waylandFull
  ];
}
