{ ... }: {
  imports = [
    ./nixvim/nixvim.nix
    ./user.nix
    ./stylix/stylix.nix
    ./pkgs.nix
    ./pipewire.nix
    ./bluetooth.nix
    ./network.nix
    ./ssh.nix
    ./trackpoint.nix
    ./cups.nix
    ./nixd.nix
#    ./wireguard.nix
  ];
}
