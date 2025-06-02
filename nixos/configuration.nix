{ pkgs, inputs, ... }:
{

  imports = [
    ./hardware-configuration.nix
    ./modules/default.nix
    inputs.home-manager.nixosModules.default
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_zen;
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  time.timeZone = "Europe/Samara";
  
  services.udisks2.enable = true;

  services.xserver.enable = true;
  
  services.emacs = {
    enable = true;
    defaultEditor = true;
    package = pkgs.emacs30-pgtk;
  };
  
  environment.systemPackages = with pkgs; [
    emacsPackages.vterm
  ];

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
  };
    
  system = {
    stateVersion = "24.11"; # Did you read the comment?
    autoUpgrade = {
      enable = true;
      allowReboot = true;
    };
  };

}
