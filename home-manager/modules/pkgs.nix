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
    spoofdpi
    nixgl.nixGLIntel
    unzip
    imv
    ventoy-full-gtk
    # p7zip-rar

    #apps
    anydesk
    inputs.nix-photogimp.packages.${pkgs.system}.default
    libreoffice-qt6
    qbittorrent
    unstable.telegram-desktop
    calibre
    unstable.spotify
    zathura
    nautilus
    reaper
    bottles

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
