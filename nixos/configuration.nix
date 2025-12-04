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

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  environment.systemPackages = [ pkgs.home-manager ];
    
  system = {
    stateVersion = "25.05"; # Did you read the comment?
    autoUpgrade = {
      enable = true;
      allowReboot = true;
    };
  };

}
