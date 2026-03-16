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
    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
    # p7zip-rar

    #apps
    inputs.zen-browser.packages.${pkgs.system}.default
    inputs.hyprpanel.packages.${pkgs.system}.default
    libreoffice-qt6
    qbittorrent
    unstable.telegram-desktop
    calibre
    zathura
    nautilus
    # lazarus
    lazarus-qt6
    remmina



    #fonts
    nerd-fonts.symbols-only
    newcomputermodern
    iosevka
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    corefonts

  ];

  nixpkgs.config.permittedInsecurePackages = [
    "ciscoPacketTracer8-8.2.2"
  ];
}
