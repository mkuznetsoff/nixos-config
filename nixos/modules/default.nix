{ ... }: {
  imports = [
    ./user.nix
    ./power.nix
    ./pipewire.nix
    ./bluetooth.nix
    ./network.nix
    ./ssh.nix
    ./trackpoint.nix
    ./cups.nix
    ./nixd.nix
    ./openconnect.nix
    ./hyprland.nix
    ./fonts.nix
    ./nix.nix
  ];
}
