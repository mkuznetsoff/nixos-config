{ pkgs, ... }: {

services.openvpn.servers = {
    homeVPN    = { config = '' config /home/mk/nix/nixos/modules/home.conf ''; };
  };
}
