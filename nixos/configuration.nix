{ pkgs, inputs, ... }:
{

  imports = [
    inputs.home-manager.nixosModules.default
    inputs.hyprland.nixosModules.default
    ./hardware-configuration.nix
    ./modules/default.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_zen;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "Europe/Samara";

  home-manager = {
    extraSpecialArgs = {
      inherit inputs;
    };
    users = {
      mk = import ./../home-manager/home.nix;
    };
  };
  services.udisks2.enable = true;

  hardware.opengl = {
    enable = true;
  };
  hardware.xone.enable = true;
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };

  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = false;
  
  system = {
    stateVersion = "24.11"; # Did you read the comment?
    autoUpgrade = {
      enable = true;
      allowReboot = true;
    };
  };

}
