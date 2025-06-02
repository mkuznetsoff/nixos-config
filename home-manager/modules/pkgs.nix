{ pkgs, unstable, ... }: {
  
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
    spoofdpi
    nixgl.nixGLIntel

    #apps
    anydesk
    audacity
    gimp
    libreoffice-qt6
    qbittorrent
    unstable.telegram-desktop
    calibre
    polymc

    #fonts
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
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

    #wine
    wineWowPackages.stable
    winetricks
#    wineWowPackages.waylandFull
  ];
}
