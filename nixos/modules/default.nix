{ ... }: {
  imports = [
    ./user.nix
#    ./zapret.nix
#    ./pkgs.nix
    ./pipewire.nix
    ./bluetooth.nix
    ./network.nix
    ./ssh.nix
    ./trackpoint.nix
    ./cups.nix
    ./nixd.nix
    ./stylix/stylix.nix
#    ./hyprland.nix
  ];
}
