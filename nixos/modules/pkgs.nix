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
    networkmanagerapplet
    onlyoffice-bin
    qbittorrent
    telegram-desktop
    unstable.calibre
    vesktop 
    zathura

    #fonts
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
    powerline-fonts
    powerline-symbols
    font-awesome
    newcomputermodern
    noto-fonts
  ];
}
