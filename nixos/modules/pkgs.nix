{ pkgs, unstable, ... }: {

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    #utils
    fastfetch
    git
    nixd 
    nixfmt-rfc-style
    pamixer
    tree
    unstable.neovim
    wget

    #apps
    anydesk
    audacity
    gimp
    libreoffice-fresh
    onlyoffice-bin
    qbittorrent
    telegram-desktop
    unstable.calibre
    spoofdpi

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
  ];
}
